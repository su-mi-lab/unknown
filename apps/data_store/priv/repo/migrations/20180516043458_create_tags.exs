defmodule DataStore.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :name, :string, null: false
      add :status, :integer, size: 2, null: false
      timestamps(inserted_at: :created_at)
    end
  end

end
