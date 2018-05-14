defmodule Handler.Articles do

  alias DataStore.Repo
  alias DataStore.Article

  @doc """
  Hello world.

  ## Examples

      iex> Handler.Articles.hello
      :world

  """
  def hello do
    :world
  end

  @spec find(Integer.t) :: Article.t
  @doc """
  find by id
  """
  def find (id) do
    Repo.get(Article, id)
  end
end
