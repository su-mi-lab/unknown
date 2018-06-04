defmodule Handler.Authors.ShowHandler do

  @moduledoc """
  Get author data
  """

  @behaviour HandlerBehaviour

  alias DataStore.Repo
  alias DataStore.AuthorQuery
  alias Handler.Entities.Author

  def run (%{"id" => id}) do
    AuthorQuery.select_query()
    |> Repo.get!(id)
    |> Author.factory()
  end

end
