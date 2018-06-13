defmodule Handler.Entities.Article do

  @moduledoc false

  defstruct id: nil,
            title: nil,
            body: nil,
            description: nil,
            release_date: nil,
            tags: [],
            authors: []

  alias Handler.Entities.Tag
  alias Handler.Entities.Author

  def factory(params) do
    params = params
             |> Map.put(:tags, Tag.factoreis(params.tags))
             |> Map.put(:authors, Author.factoreis(params.authors))
             |> Map.from_struct()

    struct(__struct__(), params)
  end

  def factory(), do: __struct__()

  def factoreis(list), do: Enum.map(list, &(factory(&1)))
end
