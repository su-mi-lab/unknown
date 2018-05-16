defmodule DataStore.Repo.Migrations.AddColumn do
  use Ecto.Migration

  def change do
    alter table(:articles) do
      add :status, :integer, size: 2, null: false
      add :release_date, :naive_datetime, null: false
    end
  end

end
