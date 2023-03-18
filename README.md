# Rails学習

## 目的

転職活動するにあたり、Railsを利用している企業が多かったため、触っておく

## 基礎学習

https://railsguides.jp/getting_started.html
https://www.youtube.com/watch?v=IyEcu9e1YgM


## コマンド
ターミナルでコマンドを実行する時は「docker-compose run web」をつける
下記は「ruby -v」を実行する場合
```
$ docker-compose run web ruby -v
```
※dockerコンテナに入ってもコマンドは実行できないので注意


## DB確認

DBコンテナに入る
```
$ docker container exec -it 25e432101b01 bash
```

PostgreSQLにログイン
```
psql -U postgres
```

## PostgreSQLコマンド参考URL

https://qiita.com/H-A-L/items/fe8cb0e0ee0041ff3ceb

## DB 取得系

モデルの継承元でcreateコマンドなど定義されている
https://github.com/rails/rails/blob/main/activerecord/lib/active_record/persistence.rb

コンソール立ち上げ
```
$ docker-compose run web rails c  
```

insert
```
User.create!(name: "Aさん", age: 19)
```

select
```angular2html
User.all
```
```angular2html
User.find(1)
user = User.find(1)
user.name
```
```angular2html
User.where("age>=19")
```

update
```
User.find(1)
user.name = "hoge"
user.save
```

## Crudコマンド

scaffold と model作成を同時に行うコマンド
```angular2html
docker-compose run web rails g scaffold WeightHistory user:references weight:integer memo:string
```