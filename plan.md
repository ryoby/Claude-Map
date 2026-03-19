# フィールドプランナー 開発計画

## プロジェクト概要

インタラクティブな地図上でフィールド作業の予定を管理するシングルファイルWebアプリ。

---

## TODO リスト

### フェーズ0: ドキュメント整備

- [ ] **PRDファイルをリポジトリにアップロードする**
  - PRD（製品要件定義書）をリポジトリのルートに追加する
  - ファイル名例: `PRD.md`
  - 開発の透明性と方向性の共有のために必須

---

### フェーズ1: Mac へのクローンと動作確認

- [ ] **1-1. Git のインストール確認**
  ```bash
  git --version
  # 未インストールの場合: brew install git
  ```

- [ ] **1-2. リポジトリをクローン**
  ```bash
  git clone https://github.com/ryoby/For-Claud-Map.git
  cd For-Claud-Map
  ```

- [ ] **1-3. ブランチの確認**
  ```bash
  git branch -a
  # 開発ブランチ: claude/init-project-setup-BBp1n
  git checkout claude/init-project-setup-BBp1n
  ```

- [ ] **1-4. ブラウザで動作確認**
  - `index.html` をブラウザで直接開く（ビルド不要）
  ```bash
  open index.html
  ```
  - 確認ポイント:
    - [ ] 地図が東京中心で表示される
    - [ ] カテゴリ選択・タイトル・日付などのフォームが動作する
    - [ ] ポリゴン描画ができる
    - [ ] LocalStorage へのデータ保存・読み込みができる

---

### フェーズ2: 開発環境の整備

- [ ] **2-1. エディタのセットアップ**
  - VS Code 推奨
  - 拡張機能: Prettier（任意）

- [ ] **2-2. ローカル開発サーバーの確認（任意）**
  - 基本は `open index.html` で動作するが、Geolocation API はHTTPSまたはlocalhostが必要
  ```bash
  # Python が入っている場合
  python3 -m http.server 8080
  # → http://localhost:8080 でアクセス
  ```

---

### フェーズ3: 機能開発（PRD確認後に詳細化）

- [ ] **3-1. PRD の内容をもとに機能要件を整理**
- [ ] **3-2. 実装タスクをこのファイルに追記**

---

## 次のアクション

> セッション開始時に確認すること: **上記TODOの最初の未完了タスク**

現時点での最優先タスク:
**→ PRDファイルをリポジトリにアップロードする（フェーズ0）**
