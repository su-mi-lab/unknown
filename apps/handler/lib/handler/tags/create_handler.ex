defmodule Handler.Tags.CreateHandler do

  @moduledoc """
  Get tag data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Tag
  alias Handler.Entities.Error

  def run (params) do
    case Repo.insert(Tag.changeset(%Tag{}, params)) do
      {:ok, data} -> {:ok, Handler.Entities.Tag.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
