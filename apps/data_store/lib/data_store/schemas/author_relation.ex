defmodule DataStore.AuthorRelation do

  @moduledoc """

  Schema for author_relations

  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "author_relations" do
    timestamps(inserted_at: :created_at)

    belongs_to :article, DataStore.Article
    belongs_to :author, DataStore.Author
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:article_id, :author_id])
    |> validate_required([:article_id, :author_id])
  end

end
