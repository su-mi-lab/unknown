defmodule DataStore.Tag do

  @moduledoc """

  Schema for tags

  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "tags" do
    field :name, :string
    field :status, :integer
    timestamps(inserted_at: :created_at)
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :status])
    |> validate_required([:name, :status])
    |> unique_constraint(:name)
  end

end
