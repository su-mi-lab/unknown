defmodule Handler.Entities.Tag do
  defstruct id: nil,
            name: nil

  def factory(params) do
    struct(__struct__(), Map.from_struct(params))
  end

  def factory() do
    __struct__()
  end

  def factoreis(list) do
    Enum.map(list, &(factory(&1)))
  end
end
