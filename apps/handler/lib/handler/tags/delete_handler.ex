defmodule Handler.Tags.DeleteHandler do

  @moduledoc """
  Delete tag
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.TagQuery

  def run (%{"id" => id}) do
    tag = Repo.get!(TagQuery.select_query(), id)

    case Repo.delete(tag) do
      {:ok, _data} -> {:ok, ""}
      {:error, _changeset} -> {:error, ""}
    end
  end

end
