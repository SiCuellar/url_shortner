defmodule UrlShortnerWeb.PageController do
  use UrlShortnerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
