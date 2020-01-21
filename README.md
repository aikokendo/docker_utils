# Docker Utils

download docker images for postgres and redis:

```
docker pull postgres
docker pull redis
```

execute the docker file:

```
docker-compose up
```

## Debug steps

### Redis
access the Redis container and see the current keys in cache by running 
```
docker exec -it <redis-container-name> bash
redis-cli
keys *
```

### Postgres
Run pgAdmin for management tools for postgresSQL.  Connection information:
```
hostname: 192.168.99.100
port: 5432
db: postgres
username: postgres
pass: somePass
```

### Rabbitmq
queues and general in messages rates can be found in the admin page:
```
http://192.168.99.100:15672/
```
default rabbitmq definition in this docker file does not limit rabbitmq memory and is using default parameters. In case of a real-life case, they must be fine tuned for the environment.

