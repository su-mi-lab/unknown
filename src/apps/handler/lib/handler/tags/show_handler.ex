defmodule Handler.Tags.ShowHandler do

  @moduledoc """
  Get tag data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.TagQuery
  alias Handler.Entities.Tag

  def run (%{"id" => id}) do
    TagQuery.select_query()
    |> Repo.get!(id)
    |> Tag.factory()
  end

end
