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