defmodule Housy.Repo.Migrations.CreatePropertyActions do
  use Ecto.Migration

  def change do
    create table(:property_actions) do
      add :name, :string

      timestamps()
    end

  end
end
