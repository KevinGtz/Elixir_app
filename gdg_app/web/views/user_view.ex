defmodule GdgApp.UserView do
  use GdgApp.Web, :view
  alias GdgApp.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
