# SCIENTI API

This application implements the regions filters to the researches data in Colombia 2019.
You can find insomnia folder with all the request examples in `./documentation/Insomnia_scienti_api.json`

## How To Run

### Docker ready to run

In order to run this application you must have installed [Docker](https://www.docker.com/products/docker-desktop) and [Docker-compose](https://docs.docker.com/compose/install/)
Then you must run the following commands:

```shell
docker-compose build
docker-compose up -d
docker-compose run web rake db:create
docker-compose run web rake db:migrate
```

### Run in development environment

In order to run this app in development environment you must install:
* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [PostgreSQL](https://www.postgresql.org/download/)

An then, you must configure the file `./config/database.yml` with the postgresql user and run the following commands:

```shell
bundle install
rake db:create
rake db:migrate
rails server
```

## Author
Andrea Fuentes
