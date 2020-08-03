# td-client-samples

このリポジトリは各種言語でTreasuredataにてQueryを実行するためのサンプルコードです。

## Setup

### 動作確認環境

- Docker (Docker version 19.03.12, build 48a66213fe)
- docker-compose (docker-compose version 1.26.2, build eefe0d31)
- make (GNU Make 4.2.1)

### 環境構築

1. config/td.env.sample を参考にしながら config/td.env を作成する

2. Docker ImageのBuild

```
$ make setup
```

## Run

### Ruby

```
$ make ruby-script
```

### Python

```
$ make python-script
```

### cli

```
$ make cli-script
```
