defmodule Handler.Authors.UpdateHandler do

  @moduledoc """
  Update author
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Author
  alias DataStore.AuthorQuery
  alias Handler.Entities.Error

  def run (%{"id" => id, "author" => params}) do

    update = Repo.update(
      AuthorQuery.select_query()
      |> Repo.get!(id)
      |> DataStore.Author.changeset(params)
    )
    case update do
      {:ok, data} -> {:ok, Handler.Entities.Author.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
