defmodule Handler.Articles.ShowHandler do

  @moduledoc """
  Get article data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery
  alias Handler.Entities.Article

  def run (%{"id" => id}) do
    ArticleQuery.select_query()
    |> ArticleQuery.join_tag
    |> Repo.get!(id)
    |> Article.factory()
  end

end
