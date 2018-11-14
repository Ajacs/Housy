defmodule Housy.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :street, :string
      add :colony, :string
      add :municipality, :string
      add :state, :string
      add :number, :string
      add :postal_code, :integer

      timestamps()
    end

  end
end
