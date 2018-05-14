defmodule Handler.Article do

  alias DataStore.Repo
  alias DataStore.Article

  @spec all() :: Map.t
  @doc """
  find by all
  """
  def all do
    Repo.all(Article)
  end

  @spec find(Integer.t) :: Article.t
  @doc """
  find by id
  """
  def find (id) do
    Repo.get!(Article, id)
  end
end
