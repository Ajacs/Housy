defmodule HousyWeb.PropertyActionView do
  use HousyWeb, :view
  alias HousyWeb.PropertyActionView

  def render("index.json", %{property_actions: property_actions}) do
    %{data: render_many(property_actions, PropertyActionView, "property_action.json")}
  end

  def render("show.json", %{property_action: property_action}) do
    %{data: render_one(property_action, PropertyActionView, "property_action.json")}
  end

  def render("property_action.json", %{property_action: property_action}) do
    %{id: property_action.id,
      name: property_action.name}
  end
end
