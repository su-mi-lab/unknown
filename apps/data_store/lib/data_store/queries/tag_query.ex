defmodule DataStore.TagQuery do

  @moduledoc """

  Query module for tags

  """

  import Ecto.Query

  @doc """

  Getting the query to use by default

  ## Examples
      iex> DataStore.TagQuery.select_query()
      #Ecto.Query<from t in DataStore.Tag, where: t.status == ^10>
  """
  def select_query do
    DataStore.TagQuery.eq_active(DataStore.Tag)
  end

  @doc """

  Valid data conditions

  ## Examples
      iex> DataStore.TagQuery.eq_active(DataStore.Tag)
      #Ecto.Query<from t in DataStore.Tag, where: t.status == ^10>

      iex> DataStore.TagQuery.eq_active(DataStore.Tag, :left_join)
      #Ecto.Query<from t in DataStore.Tag, where: unknown_binding!.status == ^10 or is_nil(unknown_binding!.status)>
  """
  def eq_active(struct, :left_join) do
    where(struct, [_, t], t.status == ^DataStore.Status.live() or is_nil(t.status))
  end

  def eq_active(struct) do
    where(struct, [t], t.status == ^DataStore.Status.live())
  end

end
