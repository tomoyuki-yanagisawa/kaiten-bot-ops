# kaiten_bot_app

## Requirements

```
# Docker VM
brew install colima
```

```
# Docker CLI
brew install docker
```

```
# Docker BuildX
brew install docker-buildx
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-buildx/bin/docker-buildx ~/.docker/cli-plugins/docker-buildx
```

## Sethup Docker VM

```
colima start # VM 立ち上げ
colima ls # VM 一覧
```

## Setup Docker CLI

```
docker context ls # 接続先ホスト一覧
docker context use colima
docker run hello-world # テスト
```

## Build

```
DOCKER_BUILDKIT=1 docker build ./kaiten_bot/console -t kaiten-bot/console --ssh default
docker image ls
```

