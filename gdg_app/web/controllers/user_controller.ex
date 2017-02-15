defmodule GdgApp.UserController do
  use GdgApp.Web, :controller

  def index(conn, _params) do
    users = Repo.all(GdgApp.User)
    render conn, "index.html", users: users
  end
end
