defmodule Handler.Articles.IndexHandler do

  @moduledoc """
  Get Articles data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery
  alias DataStore.TagQuery
  alias DataStore.AuthorQuery
  alias Handler.Entities.Article

  def run (_) do
    ArticleQuery.select_query()
    |> TagQuery.join_tag(:left)
    |> AuthorQuery.join_author(:left)
    |> Repo.all()
    |> Article.factoreis()
  end

end
