defmodule Handler.Tags.CreateHandler do

  @moduledoc """
  Get tag data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Tag

  def run (params) do
    case Repo.insert(Tag.changeset(%Tag{}, params)) do
      {:ok, data} -> {:ok, Handler.Entities.Tag.factory(data)}
      {:error, changeset} -> {:error, changeset.errors}
    end

  end

end
