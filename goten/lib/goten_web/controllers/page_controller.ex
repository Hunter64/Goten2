defmodule GotenWeb.PageController do
  use GotenWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
