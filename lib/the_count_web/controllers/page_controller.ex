defmodule TheCountWeb.PageController do
  use TheCountWeb, :controller

  def index(conn, _params) do
    render conn, "index.html", counter: counter_val()
  end

  defp counter_val do
    TheCount.Counter.val()
  end
end
