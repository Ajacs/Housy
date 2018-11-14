defmodule Housy.Repo.Migrations.CreateAuthorities do
  use Ecto.Migration

  def change do
    create table(:authorities) do
      add :name, :string
      timestamps()
    end

  end
end
