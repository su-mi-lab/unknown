defmodule DataStore.ArticleQuery do

  @moduledoc """

  Query module for articles

  """

  import Ecto.Query

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
    where(struct, [a], a.status == ^DataStore.Status.live())
  end

end
