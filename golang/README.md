# GoLang

## 事前準備
このRemote-Containerでは他のコンテナ(DB用のコンテナ)とネットワークを共有するために、事前に以下のコマンドでDockerネットワークを作成する必要がある

```bash
docker network create --driver bridge remote-container_common-network
```

## 参考
* https://github.com/microsoft/vscode-remote-try-go