defmodule Handler.Articles.DeleteHandler do

  @moduledoc """
  Delete article
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.ArticleQuery

  def run (%{"id" => id}) do
    article = Repo.get!(ArticleQuery.select_query(), id)
    case Repo.delete(article) do
      {:ok, _data} -> {:ok, ""}
      {:error, _changeset} -> {:error, ""}
    end
  end

end
