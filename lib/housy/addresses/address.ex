defmodule Housy.Addresses.Address do
  use Ecto.Schema
  import Ecto.Changeset


  schema "addresses" do
    field :municipality, :string
    field :postal_code, :string
    field :state, :string
    field :street, :string

    timestamps()
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:street, :municipality, :state, :postal_code])
    |> validate_required([:street, :municipality, :state, :postal_code])
  end
end
