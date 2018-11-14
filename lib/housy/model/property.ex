defmodule Housy.Model.Property do
  use Ecto.Schema
  import Ecto.Changeset


  schema "properties" do
    field :garage_size, :integer
    field :number_of_bathrooms, :integer
    field :price, :float
    field :rooms_count, :integer
    field :property_type_id, :id
    field :property_action_id, :id
    field :address_id

    timestamps()
  end

  @doc false
  def changeset(property, attrs) do
    property
    |> cast(attrs, [:rooms_count, :number_of_bathrooms, :garage_size, :price])
    |> validate_required([:rooms_count, :number_of_bathrooms, :garage_size, :price])
  end
end
