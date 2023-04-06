defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
end

defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    json(conn, %{message: "Hello world!"})
  end
end
