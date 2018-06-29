defmodule DataStore.Repo.Migrations.CreateAuthorRelations do
  use Ecto.Migration

  def change do
    create table(:author_relations) do
      add :article_id, :bigint, null: false
      add :author_id, :bigint, null: false
      timestamps(inserted_at: :created_at)
    end

    create index(:author_relations, :article_id)
    create index(:author_relations, :author_id)
  end
end
