defmodule DataStore.Repo.Migrations.AddColumn do
  use Ecto.Migration

  def change do
    alter table(:articles) do
      add :status, :integer, size: 2, null: false
      add :release_date, :naive_datetime, null: false
    end
  end

  def down do
    alter table(:users) do
      remove :status
      remove :release_date
    end
  end
end
