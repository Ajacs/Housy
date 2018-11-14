defmodule Housy.Properties.PropertyAction do
  use Ecto.Schema
  import Ecto.Changeset


  schema "property_actions" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(property_action, attrs) do
    property_action
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
