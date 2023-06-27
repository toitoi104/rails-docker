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

