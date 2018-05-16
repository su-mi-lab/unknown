defmodule DataStore.TagRelation do

  @moduledoc """

  Schema for tag_relations

  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "tag_relations" do
    timestamps(inserted_at: :created_at)

    belongs_to :article, DataStore.Article
    belongs_to :tag, DataStore.Tag
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:article_id, :tag_id])
    |> validate_required([:article_id, :tag_id])
  end

end
