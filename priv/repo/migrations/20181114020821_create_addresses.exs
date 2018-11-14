defmodule Housy.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :street, :string
      add :municipality, :string
      add :state, :string
      add :postal_code, :string

      timestamps()
    end

  end
end
