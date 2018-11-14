defmodule HousyWeb.UserView do
  use HousyWeb, :view
  alias HousyWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      last_name: user.last_name,
      email: user.email,
      created_at: user.inserted_at
    }
  end
end
