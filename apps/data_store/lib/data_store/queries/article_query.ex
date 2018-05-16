defmodule DataStore.ArticleQuery do

  @moduledoc """

  Query module for articles

  """

  import Ecto.Query

  alias DataStore.TagQuery

  @doc """

  Getting the query to use by default

  ## Examples
      iex> DataStore.ArticleQuery.select_query()
      #Ecto.Query<from a in DataStore.Article, where: a.status == ^10>
  """
  def select_query do
    DataStore.ArticleQuery.eq_active(DataStore.Article)
  end

  @doc """

  Valid data conditions

  ## Examples
      iex> DataStore.ArticleQuery.eq_active(DataStore.Article)
      #Ecto.Query<from a in DataStore.Article, where: a.status == ^10>
  """
  def eq_active(struct) do
    struct
    |> where([a], a.status == ^DataStore.Status.live())
  end

  @doc """

  Valid data conditions

  ## Examples
      iex> DataStore.ArticleQuery.join_tag(DataStore.Article)
      #Ecto.Query<from a in DataStore.Article, left_join: t in assoc(a, :tags), where: t.status == ^10 or is_nil(t.status), preload: [tags: t]>
  """
  def join_tag(struct) do
    struct
    |> join(:left, [t], _ in assoc(t, :tags))
    |> TagQuery.eq_active(:left_join)
    |> preload([_, t], [tags: t])
  end
end
