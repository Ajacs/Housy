defmodule Housy.Model.Address do
  use Ecto.Schema
  import Ecto.Changeset


  schema "addresses" do
    field :colony, :string
    field :municipality, :string
    field :number, :string
    field :postal_code, :integer
    field :state, :string
    field :street, :string

    timestamps()
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:street, :colony, :municipality, :state, :number, :postal_code])
    |> validate_required([:street, :colony, :municipality, :state, :number, :postal_code])
  end
end
