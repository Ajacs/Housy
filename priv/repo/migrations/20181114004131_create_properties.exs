defmodule Housy.Repo.Migrations.CreateProperties do
  use Ecto.Migration

  def change do
    create table(:properties) do
      add :rooms_count, :integer
      add :number_of_bathrooms, :integer
      add :garage_size, :integer
      add :price, :float
      add :property_type_id, references(:property_types, on_delete: :nothing)
      add :property_action_id, references(:property_actions, on_delete: :nothing)
      add :address_id, references(:addresses, on_delete: :nothing)
      timestamps()
    end

    create index(:properties, [:property_type_id])
    create index(:properties, [:property_action_id])
  end
end
