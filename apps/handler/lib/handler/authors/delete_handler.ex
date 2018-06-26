defmodule Handler.Authors.DeleteHandler do

  @moduledoc """
  Delete author
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.AuthorQuery

  def run (%{"id" => id}) do
    author = Repo.get!(AuthorQuery.select_query(), id)

    case Repo.delete(author) do
      {:ok, _data} -> {:ok, ""}
      {:error, _changeset} -> {:error, ""}
    end
  end

end
