defmodule TheCountWeb.PageControllerTest do
  use TheCountWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "The counter is..."
  end
end
