** Setup **
```
1. docker-compose up -d mongo
2. docker-compose up -d mongo-init-replica
3. docker-compose up -d rocketchat
```

** Update **
```
docker pull rocketchat/rocket.chat:develop
docker-compose stop rocketchat
docker-compose rm rocketchat
docker-compose up -d rocketchat
```
