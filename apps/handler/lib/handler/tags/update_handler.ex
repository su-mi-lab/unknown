defmodule Handler.Tags.UpdateHandler do

  @moduledoc """
  Update tag
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.TagQuery
  alias Handler.Entities.Error

  def run (%{"id" => id, "tag" => params}) do

    update = Repo.update(
      TagQuery.select_query()
      |> Repo.get!(id)
      |> DataStore.Tag.changeset(params)
    )
    case update do
      {:ok, data} -> {:ok, Handler.Entities.Tag.factory(data)}
      {:error, changeset} -> {:error, Error.factoreis(changeset.errors)}
    end
  end

end
