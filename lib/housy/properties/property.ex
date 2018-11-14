defmodule Housy.Properties.Property do
  use Ecto.Schema
  import Ecto.Changeset


  schema "properties" do
    field :description, :string
    field :garage_size, :integer
    field :number_of_bathrooms, :integer
    field :price, :float
    field :rooms_count, :integer
    field :property_type_id, :id
    field :property_action_id, :id
    field :address_id, :id

    timestamps()
  end

  @doc false
  def changeset(property, attrs) do
    property
    |> cast(attrs, [:description, :rooms_count, :number_of_bathrooms, :garage_size, :price, :property_type_id, :property_action_id, :address_id])
    |> validate_required([:description, :rooms_count, :number_of_bathrooms, :garage_size, :price, :property_type_id, :property_action_id, :address_id])
    |> foreign_key_constraint(:property_type_id)
    |> foreign_key_constraint(:property_action_id)
    |> foreign_key_constraint(:address_id)
  end
end
