# Udemy学習

## boardモデル作成

```angular2html
$ rails g model board name:string title:string body:text
$ rake db:migrate
```

ロールバック
```angular2html
$ rake db:rollback
```

## debug

```デバッグ
# サーバーサイドで下記を記載
# log/development.log に書き出される
logger.debug("if文の中に入りました")
logger.debug(params)
```

## タイムゾーン

下記ファイルにtime_zoneを記載し、dockerを立ち上げ直す
config/application.rb
```angular2html
config.time_zone = "Tokyo"
```

```angular2html
$ docker-compose stop
$ docker-compose up -d
```

## 設定済みルートの確認

http://localhost:3000/rails/info/routes


## seed実行コマンド

```angular2html
bundle exec rake db:seed
```

## ページネーション

gem
```angular2html
gem 'kaminari'
```

設定ファイル作成command
```angular2html
$ bundle exec rails g kaminari:config
```
viewファイル作成command
```angular2html
$ bundle exec rails g kaminari:views default
```

tailwindCssに対応してほしいため、viewは下記に変更
https://github.com/amatsuda/kaminari_themes/pull/73/commits/af992dd998a98eb5892c7bd529a362a0a0a539a7#diff-6131bb6beb79e8fb945fc6f4503879d43b3195306292ee6ddfde820b4136c2e9