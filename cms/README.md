# Cms

## Install

```

docker-compose build

docker-compose run web mix deps.get

docker-compose run web mix ecto.create

docker-compose run web mix ecto.migrate


```


## Run

```

docker-compose up --force-recreate web
 ⇒　http://localhost:4000/

```

## Command

```

docker-compose stop

docker-compose restart

```

## Test

```

docker-compose run web mix test

```
