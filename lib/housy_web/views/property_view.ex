defmodule HousyWeb.PropertyView do
  use HousyWeb, :view
  alias HousyWeb.PropertyView

  def render("index.json", %{properties: properties}) do
    %{data: render_many(properties, PropertyView, "property.json")}
  end

  def render("show.json", %{property: property}) do
    %{data: render_one(property, PropertyView, "property.json")}
  end

  def render("property.json", %{property: property}) do
    %{id: property.id,
      description: property.description,
      rooms_count: property.rooms_count,
      number_of_bathrooms: property.number_of_bathrooms,
      garage_size: property.garage_size,
      price: property.price}
  end
end
