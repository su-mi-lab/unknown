defmodule DataStore.Article do
  use Ecto.Schema

  import Ecto
  import Ecto.Changeset

  schema "articles" do
    field :title, :string
    field :body, :string
    timestamps(inserted_at: :created_at)
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body,])
    |> validate_required([:title, :body,])
  end
end