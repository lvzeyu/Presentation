# Slide Templates

Reusable presentation templates for this repository.

## Quick Start

Create a new deck from the default template:

```bash
scripts/new-slidev-deck.sh Other/2026/new_lecture
```

Create a new deck from a named template:

```bash
scripts/new-slidev-deck.sh Other/2026/new_lecture slidev-tohoku
```

Then run the deck:

```bash
cd Other/2026/new_lecture
npm install
npm run dev
```

Export:

```bash
npm run export
npm run export:pdf
```

## Available Templates

### `slidev-tohoku`

A 16:9 Slidev academic lecture template based on the `zemi260518` visual structure:

- Neversink theme
- custom `style.css`
- title slide with Tohoku University logo
- reusable sections for overview, concepts, measurement, mechanism, evidence, discussion, and closing

## Adding Another Template

1. Create a new folder under `templates/`.
2. Include at least `slides.md`, `package.json`, and any shared assets.
3. Keep generated folders out of the template: `node_modules`, `dist`, `.slidev`.
4. Create a deck with:

```bash
scripts/new-slidev-deck.sh Other/2026/example your-template-folder-name
```

The script copies the template into the target directory and updates `package.json` with a project name based on the target folder.
