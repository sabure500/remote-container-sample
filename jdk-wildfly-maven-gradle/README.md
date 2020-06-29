# JDK-WILDFLY-MAVEN-GRADLE

## 事前準備
このRemote-Containerでは他のコンテナとネットワークを共有するために、事前に以下のコマンドでDockerネットワークを作成する必要がある

```bash
docker network create --driver bridge remote-container_common-network
```

## .devcontainer外のファイル

* start-sever.sh  
シェルを実行するとwildflyが起動する
* deploy.sh  
シェルを実行するとソースコードをmavenでBuildし、wildflyへデプロイする  
実行はアプリケーションディレクトリ(mvn packageが実行できるフォルダ)から呼び出す必要がある
* undeploy.sh
シェルを実行するとdeploy.shでデプロイしたwarファイルをアンデプロイする
