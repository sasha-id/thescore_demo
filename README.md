# Installation
```
docker-compose build
docker-compose up
docker-compose run web rake db:migrate db:seed
```

# Search 
Full text search is implemented using **pg_trgm**

