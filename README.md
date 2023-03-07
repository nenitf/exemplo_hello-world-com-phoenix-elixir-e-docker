# Hello

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Hm

### Criando projeto sem ter o projeto

```sh
docker run -v $(pwd):/var/opt -w /var/opt -it --rm elixir bash
chown 1000:1000 projeto
mix archive.install hex phx_new
mix phx.new exemplo_hello-phx-docker --app hello
```

```sh
docker-compose exec app mix phx.server
```

```sh
docker-compose exec app sh

mix deps.get # baixa deps
mix ecto.drop # destrói o banco de dados
mix ecto.setup # cria o banco de dados e executa o arquivo seeds
mix ecto.create
mix phx.server # sobe o servidor
```
