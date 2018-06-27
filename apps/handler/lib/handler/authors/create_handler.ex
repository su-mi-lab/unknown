defmodule Handler.Authors.CreateHandler do

  @moduledoc """
  Create Author
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Author
  alias Handler.Entities.Error

  def run (%{"item" => item}) do
    case Repo.insert(Author.changeset(%Author{}, item)) do
      {:ok, data} -> {:ok, Handler.Entities.Author.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
