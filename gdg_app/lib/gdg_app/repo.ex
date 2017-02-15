defmodule GdgApp.Repo do

  @moduledoc """
  In memory repository.
  """

  def all(GdgApp.User) do
    [%GdgApp.User{id: "1", name: "Kevin", username: "josevalim", password: "elixir"},
    %GdgApp.User{id: "2", name: "Saul", username: "redrapids", password: "7langs"},
    %GdgApp.User{id: "3", name: "Aaron", username: "chrismccord", password: "phx"}]
  end
  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end
  def get_by(module, params) do Enum.find all(module), fn map ->
    Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end) end
  end
end
