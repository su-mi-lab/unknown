defmodule DataStore.Repo.Migrations.AddColumnDescription do
  use Ecto.Migration

  def change do
    alter table(:articles) do
      add :description, :string, size: 255
    end
  end
end
