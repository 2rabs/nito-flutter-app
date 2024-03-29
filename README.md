[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)
[![Maintainability](https://api.codeclimate.com/v1/badges/7144cf7d95ad890dbe19/maintainability)](https://codeclimate.com/github/2rabs/nito-app/maintainability)
[![Deploy to Firebase Hosting on merge](https://github.com/2rabs/nito-app/actions/workflows/prod-firebase-hosting-deploy.yml/badge.svg)](https://github.com/2rabs/nito-app/actions/workflows/prod-firebase-hosting-deploy.yml)

# NITO

NITO アプリです。

## GetStarted

以下の手順を踏んで開発に参加しましょう。

### 1. `git clone`

以下のコマンドを実行してクローンします。

```shell
git clone https://github.com/2rabs/nito.git
```

### 2. `make bs`

以下のコマンドを実行し、プロジェクトをセットアップします。

```shell
$ make bs
```

Supabase の セットアップ時に `Enter your database password:` と問われた場合は [こちらの Wiki](https://www.notion.so/2rabs/Supabase-5e6a3dcca45d4345839515eb7058c608) から取得してください。

### 3. `.env`

`/app/frontend` ディレクトリ配下にある `.env.example` を参考に `.env` ファイルを作成します。

```text
LIFF_ID=YOUR_LIFF_ID
SUPABASE_URL=YOUR_SUPABASE_URL
SUPABASE_ANON_KEY=YOUR_SUPABASE_ANON_KEY
```

- LIFF の情報は [こちら](https://developers.line.biz/console/channel/1656946867/liff) から取得できます。
- Supabase の情報は [こちら](https://app.supabase.com/project/hwxxihvcszfhaxlguajv/settings/api) から取得できます。

## Others

- [Development](docs/Development.md)
- [For Windows](docs/ForWindows.md)
