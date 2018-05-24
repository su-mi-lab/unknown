# UnKnown

[![CircleCI](https://circleci.com/gh/sumiyoshi/unknown.svg?style=svg)](https://circleci.com/gh/sumiyoshi/unknown)
[![Ebert](https://ebertapp.io/github/sumiyoshi/unknown.svg)](https://ebertapp.io/github/sumiyoshi/unknown)

## 初回設定

### Umbrellaプロジェクトの生成

```
docker-compose run mix new unknown --umbrella
```

### Install

```
ocker-compose build

docker-compose up -d

docker-compose exec app mix deps.get

docker-compose exec app mix ecto.setup
```

## Run

```

docker-compose exec app mix phoenix.server
 =>http://localhost:4000/

```

## Command

```

docker-compose stop

docker-compose restart

docker container list -a

docker rm $(docker ps -aq)

```

## Test

```

docker-compose exec app mix test

```

## Docs

```

docker-compose exec app mix docs

```

## Release

```

docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

docker-compose exec app mix deps.get --only prod

docker-compose exec app mix compile

docker-compose exec app mix phoenix.server

```