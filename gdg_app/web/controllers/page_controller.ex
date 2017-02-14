defmodule GdgApp.PageController do
  use GdgApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
