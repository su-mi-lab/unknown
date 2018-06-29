defmodule Handler.Tags.IndexHandler do

  @moduledoc """
  Get Tags data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.TagQuery
  alias Handler.Entities.Tag

  def run (_) do
    TagQuery.select_query()
    |> Repo.all()
    |> Tag.factoreis()
  end

end
