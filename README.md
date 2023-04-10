# `Hello world` com Phoenix (Elixir) e Docker

<details>
    <summary>Criando projeto sem ter o projeto</summary>

```sh
docker run -v $(pwd):/var/opt -w /var/opt -it --rm elixir bash
```

```sh
mix archive.install hex phx_new
mix phx.new exemplo_hello-phx-docker --app hello
exit
```

```sh
sudo chown 1000:1000 hello/**/*
cd hello
```

</details>
 
## Ambiente

```sh
docker-compose up -d

docker-compose exec app sh

mix deps.get # baixa deps
mix ecto.drop # destrói o banco de dados
mix ecto.setup # cria o banco de dados e executa o arquivo seeds
mix ecto.create
mix ecto.migrate # migrate
mix phx.server # sobe o servidor
```

## Execução

1. Inicie o ambiente

```sh
docker-compose up -d
```

2. Inicie o servidor

```sh
docker-compose exec app mix phx.server
```

3. Acesse `localhost:4000/hello`

## Acesso ao banco

```sh
docker-compose exec db psql -U hellou -d hellod
````
