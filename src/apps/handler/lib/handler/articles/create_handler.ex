defmodule Handler.Articles.CreateHandler do

  @moduledoc """
  Create Article
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Article
  alias Handler.Entities.Error

  def run (%{"item" => item}) do
    case Repo.insert(Article.changeset(%Article{}, item)) do
      {:ok, data} -> {:ok, Handler.Entities.Article.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
