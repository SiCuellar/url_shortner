defmodule UrlShortnerWeb.LinksController do
  use UrlShortnerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, params) do
    conn
    |> put_status(201)
    |> json(%{})
  end


end
