# Cms

## Install

```

docker-compose build

docker-compose up -d

docker-compose exec web mix deps.get

docker-compose exec web mix ecto.create

docker-compose exec web mix ecto.migrate


```


## Run

```

docker-compose exec web mix phoenix.server
 ⇒　http://localhost:4000/

```

## Command

```

docker-compose stop

docker-compose restart

docker rm $(docker ps -aq)
```

## Test

```

docker-compose exec web mix test

```
