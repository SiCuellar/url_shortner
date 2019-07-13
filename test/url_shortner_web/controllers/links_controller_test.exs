defmodule UrlShortnerWeb.LinksControllerTest do
  use UrlShortnerWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/links")
    assert html_response(conn, 200) =~ "It is alive!"
  end

  test "it can take in a long url", %{conn: conn} do
    conn = post(conn, "/links")
    assert json_response(conn, 201)
  end

  test "it can accept a valid post request/ return valid url" do
    
  end

end
