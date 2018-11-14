defmodule HousyWeb.PageController do
  use HousyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
