defmodule Handler.ArticleHandler do

  @moduledoc """
  Get article data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery

  def run (%{"id" => id}) do
    ArticleQuery.select_query()
    |> ArticleQuery.join_tag
    |> Repo.get!(id)
  end
end
