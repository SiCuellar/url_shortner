defmodule UrlShortnerWeb.LinksController do
  use UrlShortnerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, params) do
    case UrlShortner.Urls.create_link(params) do
      {:ok, link} ->
        conn
        |> put_status(201)
        |> json(%{short_url: link.short_url, long_url: link.long_url})

      {:error, error} ->
        conn
        |> put_status(400)
        |> json(%{error: error})
    end
  end

  def handle_short_link(conn, %{"short_url" => short_url}) do
    long_url = UrlShortner.Urls.get_by_short_link!(short_url).long_url

    conn
    |> redirect(external: long_url)
  end
end
