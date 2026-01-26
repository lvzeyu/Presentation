---
# try also 'default' to start simple
theme: neversink
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
#background: https://cover.sli.dev
# some information about your slides (markdown enabled)
title: サーバーで oTree を動かす
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
# duration of the presentation
duration: 20min
color: navy-light
layout: intro
colorSchema: light
selectable: true
---

# oTreeではじめる社会科学実験入門

## サーバーで oTree を動かす

### 呂 沢宇 / Zeyu Lyu <a href="https://lvzeyu.github.io/" class="ns-c-iconlink"><mdi-open-in-new /></a>  

2026年1月26日


---
layout: section
color: blue-light

---

# `ウェブサイト公開`の基本概念

---
layout: top-title
color: navy-light
---

:: title ::

# ウェブサイト作成の手順

:: content ::

<v-clicks depth="2">

- ウェブサイトのデザインを考える
- デザイン案を元に自分の PC で HTML ファイルや CSS ファイルを作成する
    - 通常では、HTML / CSS（＋JavaScript）を編集してページを作成する
    - Otreeでは、：用意されたテンプレートを活用して、ページ作成の手間を減らせる
- <span v-mark.circle.orange="8">作成したファイル（＝oTreeプロジェクト）をWebサーバーに配置して公開する</span>
    - 今までは実験サイトを作成しても、自分のPCからしかアクセスできない
    - oTreeで作成した実験サイトをインターネット上で公開することで、参加者はどこからでも（自宅・スマホ等）手軽に参加できる

</v-clicks>


---
layout: two-cols-title
color: navy-light
columns: is-5
---

:: title ::

# Webサーバーとは？

:: left ::

<v-clicks depth="2">

- **サーバーとは？**
    - ざっくり言うと、ただのコンピュータ
    - ただし、特定のサービスを提供する役割で使われているコンピュータ

- **Webサーバー**
    - クライアントのWebブラウザのリクエストに応じて、HTMLや画像などの表示を提供するサービスプログラム、そのWebサービスが動作するサーバ

</v-clicks>


:: right ::

<div style="display: flex; justify-content: center;">
  <img src="/image/webserver.png" width="600" />
</div>

ブラウザーからのリクエストを受け取ったサーバーは、必要なデータを取得して処理・整形し、その内容を HTML テンプレートに埋め込むことで、最終的なページを生成して返す

---
layout: top-title
color: navy-light
---

:: title ::

# oTreeで作った実験をWebサーバーで配置する仕組み

:: content ::


- oTreeで作った実験をローカルサーバに配置する
    - 自分のPC上で oTree の開発サーバ（=ローカルWebサーバ）を起動し、ブラウザからアクセス([http://localhost:8000](http://localhost:8000))してページを生成・表示する
    

```js
otree devserver
```

<v-clicks depth="2">

- oTreeで作った実験を外部からアクセス可能なサーバに配置
    - サーバ側では、リクエストに応じて データ取得→処理→HTMLテンプレートへの埋め込みを行い、ページを生成して返す
    - インターネット上のサーバで oTreeを常時起動できるため、参加者は自分の端末から URL にアクセスするだけで実験に参加できる

</v-clicks>

---
layout: top-title
color: navy-light
---

:: title ::

# インターネットからアクセル可能のサーバ

:: content ::    

<v-clicks depth="2">

- **自作のサーバー**
   - 自分または研究室のPCをサーバとして用い、外部から到達可能な入口（グローバルIP／ドメイン＋ポート開放）を用意する
   - 安定性や処理速度、同時接続数の上限は、PC本体の性能に加えて、ネットワーク回線やルータ設定にも制約される

- **クラウドサーバ**
    - クラウド事業者が用意したインターネット上の計算資源と実行基盤を借りてサーバーとして使う
    - 起動管理、スケール、監視、HTTPS、障害対応などを事業者側が担ってくれるため、サーバー管理の手間が小さい
    - もちろん、その代わり費用が発生する
</v-clicks>


---
layout: top-title-two-cols
columns: is-6
align: l-lt-lt
color: navy-light
---

:: title ::

# クラウドサーバー関する基本概念

:: left ::

<v-clicks depth="2">

- クラウドでの「インスタンス」
   - クラウド上で動く仮想マシン（VM）
       - CPU・メモリ・ディスク・OSを持つコンピュータとしてイメージしてもよい

- クラウド事業者は用途に応じて多様なインスタンスを提供している
    - CPU最適化、GPU最適化、メモリ最適化、ストレージ最適化など
    - 代表的クラウド事業者としては、AWS、AzureやGoogle Cloudが挙げられる
    - サーバーの性能や使用量、利用時間に応じて課金される

</v-clicks>

:: right ::

<div style="display: flex; justify-content: center;">
  <img src="/image/cloud.png" width="250" />
</div>

---
layout: side-title
side: l
color: navy-light
titlewidth: is-4
align: rm-lm
title: oTreeプロジェクトをWebサーバに配置する仕組み
---

:: title ::

# oTreeプロジェクトをWebサーバに配置する仕組み

# <mdi-arrow-right />

:: content ::

<v-clicks depth="2">

- **プロジェクトのアップロード**
    - oTreeプロジェクト一式(コード／テンプレート／静的ファイル)をクラウドサーバにアップロード

- **実験環境の構築とデプロイ**
    - **Build（ビルド）**：必要なパッケージをインストール　
    - **Run（実行）**：本番環境でoTreeサーバーを起動
        - `otree prodserver $PORT` のようにポートを指定して起動
    - **設定（Configuration）**
        - 管理者パスワード、データベース接続情報、環境変数などを設定
    - **HTTPS設定**

</v-clicks>


---
layout: top-title
color: navy-light
---

:: title ::

# oTreeで作った実験を配置するためのサーバー

:: content ::    

<v-clicks depth="2">

- [Heroku](https://www.heroku.com/) 
    - 🚀oTree Hubとの連携機能 
        - oTree Hubでサーバーを設定
        - oTree Hubでのログ分析
    - ⚠️無料枠は2022年11月に終了した 

- [Render](https://render.com/) 
    - GitHubのリポジトリからへデプロイすることができる
    - 無料プランから試せる
- GCP/AWS
    - HTTPSの設定が必要
</v-clicks>

---
layout: section
color: blue-light
---

# `Render`でサイトを公開する

---
layout: iframe
url: https://yshimod.github.io/otree5-seminar/rendercom/
---


---
layout: top-title
color: navy-light
---

:: title ::

# Otreeの環境変数設定

:: content ::    

<v-clicks depth="2">

- **環境変数とは**
   - プログラムは指定した実行環境で動かすための設定情報

- **oTreeに設定しておく環境変数**
    - `PYTHON_VERSION`: 実行に使う Python のバージョン固定
    - `OTREE_ADMIN_PASSWORD`: 管理画面に入るためのパスワード
    - `OTREE_AUTH_LEVEL`
        - `STUDY`: 配布した「スタートリンク」経由でのみ参加できるようにし、管理画面は適切に保護する運用に向きます
        - `DEMO`: 誰でもデモ版をプレイできます
    - `OTREE_PRODUCTION`: 未設定の場合、画面下部にデバッグ情報が表示されます
    - `DATABASE_URL`: 接続する DB を指定
</v-clicks>



---
layout: section
color: blue-light
---

# おまけ：`GCP`でサイトを公開する
---
layout: top-title
color: navy-light
---

:: title ::

# Otreeの環境変数設定

:: content ::    

<v-clicks depth="2">

- **環境変数とは**
   - プログラムは指定した実行環境で動かすための設定情報

- **oTreeに設定しておく環境変数**
    - `PYTHON_VERSION`: 実行に使う Python のバージョン固定
    - `OTREE_ADMIN_PASSWORD`: 管理画面に入るためのパスワード
    - `OTREE_AUTH_LEVEL`
        - `STUDY`: 配布した「スタートリンク」経由でのみ参加できるようにし、管理画面は適切に保護する運用に向きます
        - `DEMO`: 誰でもデモ版をプレイできます
    - `OTREE_PRODUCTION`: 未設定の場合、画面下部にデバッグ情報が表示されます
    - `DATABASE_URL`: 接続する DB を指定
</v-clicks>



---
layout: section
color: blue-light
---

# おまけ：`GCP`でサイトを公開する
---
layout: top-title
color: navy-light
---

:: title ::

# Otreeの環境変数設定

:: content ::    

<v-clicks depth="2">

- **環境変数とは**
   - プログラムは指定した実行環境で動かすための設定情報

- **oTreeに設定しておく環境変数**
    - `PYTHON_VERSION`: 実行に使う Python のバージョン固定
    - `OTREE_ADMIN_PASSWORD`: 管理画面に入るためのパスワード
    - `OTREE_AUTH_LEVEL`
        - `STUDY`: 配布した「スタートリンク」経由でのみ参加できるようにし、管理画面は適切に保護する運用に向きます
        - `DEMO`: 誰でもデモ版をプレイできます
    - `OTREE_PRODUCTION`: 未設定の場合、画面下部にデバッグ情報が表示されます
    - `DATABASE_URL`: 接続する DB を指定
</v-clicks>



---
layout: section
color: blue-light
---

# おまけ：`GCP`でサイトを公開する
---
layout: iframe
url: https://kscscr.com/archives/otree-google-cloud-platform.html
---
