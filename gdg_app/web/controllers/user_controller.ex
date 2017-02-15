defmodule GdgApp.UserController do
  use GdgApp.Web, :controller

  def index(conn, _params) do
    users = Repo.all(GdgApp.User)
    render conn, "index.html", users: users
  end
  def show(conn, %{"id" => id}) do
    user = Repo.get(GdgApp.User, id)
    render conn, "show.html", user: user
  end
  alias GdgApp.User
  def new(conn, _params) do
    chargeset = User.chargeset
  end
  def create(conn, %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)
    {:ok, user} = Repo.insert(changeset)
    conn
    |> put_flash(:info, "#{user.name} created!")
    |> redirect(to: user_path(conn, :index))
  end
end
