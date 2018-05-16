defmodule Handler.ArticleHandler do

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery

  @spec run(Map.t) :: Article.t
  @doc """
  find by id
  """
  def run (%{"id" => id}) do
    ArticleQuery.select_query()
    |> Repo.get!(id)
  end
end
