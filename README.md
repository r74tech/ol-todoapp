# ol-todoapp

```bash
docker compose build 
```

```bash
docker compose run --rm  app rails db:create
```

```bash
docker compose run --rm  app rails db:migrate
```

```bash
docker compose up -d
```

https://zenn.dev/shogo_matsumoto/articles/c6485b39c5f621  
https://qiita.com/tosite0345/items/ec5a238ef09bc6996098  
https://qiita.com/ren0826jam/items/f5a9eb37211f8201d509  
https://qiita.com/gyu_outputs/items/f0ab345402362e43db80  
https://qiita.com/takuma-jpn/items/b2c04b7a271a4472a900  
https://zenn.dev/msksgm/articles/20211119-ec2-install-docker-compose


# test
```bash
docker compose run --rm  app rails g rspec:install
```
```bash
docker compose run --rm  app rails db:migrate:reset RAILS_ENV=test
```