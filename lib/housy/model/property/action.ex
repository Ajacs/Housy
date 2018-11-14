defmodule Housy.Model.Property.Action do
  use Ecto.Schema
  import Ecto.Changeset


  schema "property_actions" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(action, attrs) do
    action
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
