defmodule Handler.Tags.DeleteHandler do

  @moduledoc """
  Delete tag
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.Tag
  alias DataStore.TagQuery
  alias Handler.Entities.Error

  def run (%{"id" => id}) do
    tag = Repo.get!(TagQuery.select_query(), id)

    case Repo.delete(tag) do
      {:ok, data} -> {:ok, ""}
      {:error, changeset} -> {:error, ""}
    end
  end

end
