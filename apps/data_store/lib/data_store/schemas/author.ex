defmodule DataStore.Author do

  @moduledoc """

  Schema for authors

  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "authors" do
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
  end

end
