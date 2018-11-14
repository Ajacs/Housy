defmodule Housy.Model.Authority do
  use Ecto.Schema
  import Ecto.Changeset


  schema "authorities" do
    field :name, :string
    timestamps()
  end

  @doc false
  def changeset(authority, attrs) do
    authority
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
