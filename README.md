# webシステム基礎実験（JavaScriptクラス）本格的なDBの使い方編

今回は，テーブルを連結して，多様なデータを扱うことを目標とする．

## 準備

いつもどおりPaiza.cloudを使用する．
サーバを起動する際，Node.jsとMySQLを使用するようにチェックを入れること．

起動したらターミナルから以下のように順番に入力して，必要なデータをセットしよう．

まずはリポジトリのcloneを行う．

```bash
~$ git clone https://github.com/sudahiroshi/websystem3.git
Cloning into 'websystem3'...
remote: Enumerating objects: 12, done.
create table player ( id int auto_increment not null primary key, name varchar(1remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 12 (delta 1), reused 9 (delta 1), pack-reused 0
Unpacking objects: 100% (12/12), done.
~$
```

ディレクトリを変更する．

```bash
~$ cd websystem3
~/websystem3$
```

DBの初期化を行う．

```bash
~/websystem3$ sudo mysql < init.sql
~/websystem3$
```

データの流し込みを行う．
このとき，Warningが発生しているが，今は気にしなくて良い．

```bash
~/websystem3$ mysql -u node -pwebsystem web < db.sql
mysql: [Warning] Using a password on the command line interface can be insecure.
~/websystem3$
```

## DBの確認

ここまできちんとできていれば


```bash
~/websystem3$ mysql -u node -pwebsystem web
mysql: [Warning] Using a password on the command line interface can be insecure.
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.24-0ubuntu0.18.04.1 (Ubuntu)

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```

