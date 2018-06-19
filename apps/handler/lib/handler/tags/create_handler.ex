defmodule Handler.Tags.CreateHandler do

  @moduledoc """
  Create tag
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Tag
  alias Handler.Entities.Error

  def run (%{"item" => item}) do
    case Repo.insert(Tag.changeset(%Tag{}, item)) do
      {:ok, data} -> {:ok, Handler.Entities.Tag.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
