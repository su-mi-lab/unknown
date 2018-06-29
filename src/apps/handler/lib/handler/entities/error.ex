defmodule Handler.Entities.Error do

  @moduledoc false

  defstruct field: nil,
            message: nil

  def factory({field, {message, _}}) do
    struct(__struct__(), %{field: field, message: message})
  end

  def factory(), do: __struct__()

  def factoreis(list), do: Enum.map(list, &(factory(&1)))
end
