defmodule DataStore.Article do

  @moduledoc """

  Schema for articles

  """

  use Ecto.Schema

  import Ecto.Changeset

  schema "articles" do
    field :title, :string
    field :body, :string
    field :status, :integer
    field :release_date, :naive_datetime
    timestamps(inserted_at: :created_at)

    has_many :tag_relations, DataStore.TagRelation, foreign_key: :article_id
    has_many :tags, through: [:tag_relations, :tag]
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body, :status, :release_date])
    |> validate_required([:title, :status, :release_date])
  end

end
