# Pub/Sub Emulator Sample

このプロジェクトは、ローカル環境でCloud Pub/Subエミュレータを使用するサンプルです。Pub/Subエミュレータ、Publisher、Subscriberの3つのコンテナで構成されています。

## 開発環境構築手順

1. このリポジトリをクローンします。
    
    ```shell
    git clone https://github.com/ryo-keima/pubsub-sample.git
    ```

2. プロジェクトディレクトリに移動します。

    ```shell
    cd pubsub-sample
    ```

3. コンテナをbuildします。

    ```shell
    make build
    ```
    or
    ```shell
    docker compose build
    ```

4. コンテナを起動します。

    ```shell
    make up
    ```
    or
    ```shell
    docker compose up
    ```

## 動作確認

publisherにメッセージを送信すると、subscriberがメッセージを受信します。

以下のコマンドでcurlを使用してメッセージを送信します。
```shell
make publish
```

送信しているメッセージは、以下です。

```json
{"message": "Hello, Pub/Sub!"}
```

subscriberがメッセージを受信すると、ログに以下のようなメッセージが表示されるはずです。

```shell
Received {"message": "Hello, Pub/Sub!"}.
```
