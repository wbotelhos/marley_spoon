# Marley Spoon

[![CI](https://github.com/wbotelhos/marley_spoon/workflows/CI/badge.svg)](https://github.com/wbotelhos/marley_spoon/actions?query=workflow:CI)

## Configuration

```sh
cp .env.sample .env
```

Then set the `CONTENTFUL_ACCESS_TOKEN` and `CONTENTFUL_SPACE` variables on `.env`:

## Build

```sh
docker build . -t marley_spoon
```

## Run

```sh
docker-compose up
```

## Access

```sh
open http://0.0.0.0:9292/recipes
```

## Tests

```sh
docker run marley_spoon bundle exec rspec
```
