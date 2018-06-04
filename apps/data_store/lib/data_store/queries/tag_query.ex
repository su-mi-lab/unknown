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

  Join active tags data

  ## Examples
      iex> DataStore.TagQuery.join_tag(DataStore.Article)
      #Ecto.Query<from a in DataStore.Article, join: t in assoc(a, :tags), preload: [tags: t]>

      iex> DataStore.TagQuery.join_tag(DataStore.Article, :left)
      #Ecto.Query<from a in DataStore.Article, left_join: t in assoc(a, :tags), preload: [tags: t]>
  """
  def join_tag(struct, type \\ :inner) do
    struct
    |> join(type, [t], tag in assoc(t, :tags), tag.status == ^DataStore.Status.live())
    |> preload([..., t], [tags: t])
  end

  @doc """

  Valid data conditions

  ## Examples
      iex> DataStore.TagQuery.eq_active(DataStore.Tag)
      #Ecto.Query<from t in DataStore.Tag, where: t.status == ^10>
  """
  def eq_active(struct) do
    where(struct, [t], t.status == ^DataStore.Status.live())
  end

end
