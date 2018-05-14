# UnKnown

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

docker-compose exec app mix ecto.create

docker-compose exec app mix ecto.migrate
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