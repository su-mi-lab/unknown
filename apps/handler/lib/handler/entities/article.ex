defmodule Handler.Entities.Article do

  @moduledoc false

  defstruct id: nil,
            title: nil,
            body: nil,
            release_date: nil,
            tags: []

  alias Handler.Entities.Tag

  def factory(params) do
    params = Map.put(params, :tags, Tag.factoreis(params.tags))
    struct(__struct__(), Map.from_struct(params))
  end

  def factory(), do: __struct__()

  def factoreis(list), do: Enum.map(list, &(factory(&1)))
end
