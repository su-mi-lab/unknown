defmodule Handler.Entities.Tag do

  @moduledoc false

  defstruct id: nil,
            name: nil

  def factory(params) do
    struct(__struct__(), Map.from_struct(params))
  end

  def factory(), do: __struct__()

  def factoreis(list) when is_list(list), do: Enum.map(list, &(factory(&1)))
  def factoreis(_), do: []
end
