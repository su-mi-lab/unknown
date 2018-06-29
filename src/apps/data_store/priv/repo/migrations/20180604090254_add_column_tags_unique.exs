defmodule DataStore.Repo.Migrations.AddColumnTagsUnique do
  use Ecto.Migration

  def change do
    create unique_index(:tags, [:name])
  end
end
