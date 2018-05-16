defmodule DataStore.Repo.Migrations.CreateArticlesTable do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string, null: false
      add :body, :text
      timestamps(inserted_at: :created_at)
    end
  end

  def down do
    drop table(:articles)
  end
end
