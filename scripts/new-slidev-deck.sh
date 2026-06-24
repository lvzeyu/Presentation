#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/new-slidev-deck.sh <target-dir> [template-name]

Examples:
  scripts/new-slidev-deck.sh Other/2026/new_lecture
  scripts/new-slidev-deck.sh Other/2026/new_lecture slidev-tohoku

Available templates:
  slidev-tohoku
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -lt 1 || $# -gt 2 ]]; then
  usage
  exit 1
fi

TARGET_DIR="$1"
TEMPLATE_NAME="${2:-slidev-tohoku}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
TEMPLATE_DIR="${REPO_ROOT}/templates/${TEMPLATE_NAME}"

if [[ ! -d "${TEMPLATE_DIR}" ]]; then
  echo "Template not found: ${TEMPLATE_NAME}" >&2
  echo "Expected: ${TEMPLATE_DIR}" >&2
  exit 1
fi

if [[ "${TARGET_DIR}" = /* ]]; then
  TARGET_PATH="${TARGET_DIR}"
else
  TARGET_PATH="${REPO_ROOT}/${TARGET_DIR}"
fi

if [[ -e "${TARGET_PATH}" ]]; then
  if [[ ! -d "${TARGET_PATH}" ]]; then
    echo "Target exists but is not a directory: ${TARGET_PATH}" >&2
    exit 1
  fi
  if [[ -n "$(find "${TARGET_PATH}" -mindepth 1 -maxdepth 1 -print -quit)" ]]; then
    echo "Target directory is not empty: ${TARGET_PATH}" >&2
    exit 1
  fi
fi

mkdir -p "${TARGET_PATH}"

rsync -a \
  --exclude node_modules \
  --exclude dist \
  --exclude .slidev \
  --exclude package-lock.json \
  "${TEMPLATE_DIR}/" "${TARGET_PATH}/"

PROJECT_NAME="$(basename "${TARGET_PATH}" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9._-]/-/g')"

if [[ -f "${TARGET_PATH}/package.json" ]]; then
  node - "${TARGET_PATH}/package.json" "${PROJECT_NAME}" <<'NODE'
const fs = require("node:fs");
const [packagePath, projectName] = process.argv.slice(2);
const pkg = JSON.parse(fs.readFileSync(packagePath, "utf8"));
pkg.name = projectName;
fs.writeFileSync(packagePath, `${JSON.stringify(pkg, null, 2)}\n`);
NODE
fi

cat <<EOF
Created Slidev deck:
  ${TARGET_PATH}

Next:
  cd ${TARGET_PATH}
  npm install
  npm run dev
EOF
