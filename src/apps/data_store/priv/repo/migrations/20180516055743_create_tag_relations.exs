defmodule DataStore.Repo.Migrations.CreateTagRelations do
  use Ecto.Migration

  def change do
    create table(:tag_relations) do
      add :article_id, :bigint, null: false
      add :tag_id, :bigint, null: false
      timestamps(inserted_at: :created_at)
    end

    create index(:tag_relations, :article_id)
    create index(:tag_relations, :tag_id)
  end

end
