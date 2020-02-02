# Docker Utils

download docker images for postgres and redis:

```
docker pull postgres
docker pull redis
```

create a clone of CsvToJSONorXML in the folder CsvToJSONorXML

```
git clone git@github.com:aikokendo/CsvToJSONorXML.git CsvToJSONorXML
```

execute the rundocky, which gets the latest version of CsvToJSONorXML, creates a jar of it, creates an docker image using that jar file.
and finally execute Docker-compose:

```
sh runDocky.sh
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

### JavaService
JavaService is an image of CsvToJSONorXML, and it's endpoints will be exposed in the following address:

```
192.168.99.100:4001/
```
## independent runs for testing
```
docker run -d --hostname my-rabbit --name some-rabbit -p 15672:15672 -p 5672:5672 rabbitmq:3-management
docker run -d -p 6379:6379 --name some-redis -d redis
docker run -d -p 5432:5432 --name some-postgres -e POSTGRES_PASSWORD=somePass -d postgres
```
