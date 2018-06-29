defmodule Handler.Authors.IndexHandler do

  @moduledoc """
  Get Authors data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.AuthorQuery
  alias Handler.Entities.Author

  def run (_) do
    AuthorQuery.select_query()
    |> Repo.all()
    |> Author.factoreis()
  end

end
