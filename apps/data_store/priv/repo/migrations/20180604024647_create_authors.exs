defmodule DataStore.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :string, null: false
      add :status, :integer, size: 2, null: false
      timestamps(inserted_at: :created_at)
    end
  end
end
