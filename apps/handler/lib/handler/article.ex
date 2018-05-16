defmodule Handler.Article do
  alias DataStore.Repo
  alias DataStore.ArticleQuery

  @spec all() :: Map.t
  @doc """
  find by all
  """
  def all do
    Repo.all(DataStore.Article)
  end

  @spec find(Integer.t) :: Article.t
  @doc """
  find by id
  """
  def find (id) do
    ArticleQuery.select_query()
    |> Repo.get!(id)
  end
end
