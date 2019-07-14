defmodule UrlShortnerWeb.LinksControllerTest do
  use UrlShortnerWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/links")
    assert html_response(conn, 200) =~ "It is alive!"
  end

  test "it can take in a long url", %{conn: conn} do
    conn = post(conn, "/links", [long_url: "longest", short_url: "short"])
    assert json_response(conn, 201)
  end

  test "it can take you from long link to short link", %{conn: conn} do
    longest = "https://long_url"
    short = "1234_abc"
    post_conn = post(conn, "/links", [long_url: longest, short_url: short])

    conn = get(conn, "/#{short}")

  end
end
