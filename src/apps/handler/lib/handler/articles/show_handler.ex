defmodule Handler.Articles.ShowHandler do

  @moduledoc """
  Get article data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery
  alias DataStore.AuthorQuery
  alias DataStore.TagQuery
  alias Handler.Entities.Article

  def run (%{"id" => id}) do
    ArticleQuery.select_query()
    |> TagQuery.join_tag(:left)
    |> AuthorQuery.join_author(:left)
    |> Repo.get!(id)
    |> Article.factory()
  end

end
