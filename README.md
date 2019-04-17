# get start
## first time
```
docker-compose up -d
docker-compose exec app bundle install --path /app-vendor

docker-compose exec app bundle exec rails db:create
docker-compose exec app bundle exec rails s -b 0.0.0.0
```

## After the second time
```
docker-compose up -d
docker-compose exec app bundle exec rails s -b 0.0.0.0
```
