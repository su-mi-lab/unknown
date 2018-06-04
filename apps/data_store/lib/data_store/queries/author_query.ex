defmodule DataStore.AuthorQuery do

  @moduledoc """

  Query module for authors

  """

  import Ecto.Query

  @doc """

  Getting the query to use by default

  ## Examples
      iex> DataStore.AuthorQuery.select_query()
      #Ecto.Query<from a in DataStore.Author, where: a.status == ^10>
  """
  def select_query do
    DataStore.AuthorQuery.eq_active(DataStore.Author)
  end

  @doc """

  Join active authors data

  ## Examples
      iex> DataStore.AuthorQuery.join_author(DataStore.Article)
      #Ecto.Query<from a0 in DataStore.Article, join: a1 in assoc(a0, :authors), preload: [authors: a1]>

      iex> DataStore.AuthorQuery.join_author(DataStore.Article, :left)
      #Ecto.Query<from a0 in DataStore.Article, left_join: a1 in assoc(a0, :authors), preload: [authors: a1]>
  """
  def join_author(struct, type \\ :inner) do
    struct
    |> join(type, [a], author in assoc(a, :authors), author.status == ^DataStore.Status.live())
    |> preload([..., a], [authors: a])
  end

  @doc """

  Valid data conditions

  ## Examples
      iex> DataStore.AuthorQuery.eq_active(DataStore.Author)
      #Ecto.Query<from a in DataStore.Author, where: a.status == ^10>
  """
  def eq_active(struct) do
    where(struct, [a], a.status == ^DataStore.Status.live())
  end

end
