defmodule HousyWeb.PropertyTypeView do
  use HousyWeb, :view
  alias HousyWeb.PropertyTypeView

  def render("index.json", %{property_types: property_types}) do
    %{data: render_many(property_types, PropertyTypeView, "property_type.json")}
  end

  def render("show.json", %{property_type: property_type}) do
    %{data: render_one(property_type, PropertyTypeView, "property_type.json")}
  end

  def render("property_type.json", %{property_type: property_type}) do
    %{id: property_type.id,
      name: property_type.name}
  end
end
