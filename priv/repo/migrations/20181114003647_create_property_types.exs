defmodule Housy.Repo.Migrations.CreatePropertyTypes do
  use Ecto.Migration

  def change do
    create table(:property_types) do
      add :name, :string

      timestamps()
    end

  end
end
