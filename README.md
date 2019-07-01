# redis-docker-example

## Use
<code>docker-compose up</code> to active service

<code>docker-compose down</code> to stop service

## Host Usage

Config <code>host</code> same as service name in `docker-compose.yml` 

```javascript
const client = redis.createClient({
  host: 'redis-server',
  port: 6379
});
```


```yaml
version: "3"
services:
  redis-server:
    image: "redis"
  node-app:
    build: .
    ports: 
      - "4001:8081"
```

## Verification

```bash
# Start service detached
$ docker-compose up -d 

# List containers
$ docker ps -a
  CONTAINER ID        IMAGE             PORTS
  538576b43210        redis             6379/tcp
  ef75cf74ffa8        visits_node-app   0.0.0.0:4001->8081/tcp

# Exec continer
$ docker exec -it ef75cf74ffa8 sh
  /usr/app#
# curl service name, connect to service successfully
$ curl redis-server:6379
  -ERR wrong number of arguments for 'get' command
```