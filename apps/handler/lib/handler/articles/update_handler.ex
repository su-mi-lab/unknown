defmodule Handler.Articles.UpdateHandler do

  @moduledoc """
  Update article
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery
  alias Handler.Entities.Error

  def run (%{"id" => id, "article" => params}) do

    update = Repo.update(
      ArticleQuery.select_query()
      |> Repo.get!(id)
      |> DataStore.Article.changeset(params)
    )
    case update do
      {:ok, data} -> {:ok, Handler.Entities.Article.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
