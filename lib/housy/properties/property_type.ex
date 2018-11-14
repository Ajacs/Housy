defmodule Housy.Properties.PropertyType do
  use Ecto.Schema
  import Ecto.Changeset


  schema "property_types" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(property_type, attrs) do
    property_type
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
