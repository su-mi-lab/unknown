defmodule DataStore.Repo.Migrations.AddColumnAuthorsUnique do
  use Ecto.Migration

  def change do
    create unique_index(:authors, [:name])
  end
end
