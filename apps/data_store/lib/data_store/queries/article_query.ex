defmodule DataStore.ArticleQuery do

  import Ecto.Query

  @doc """
  Default select query
  """
  def select_query do
    DataStore.ArticleQuery.eq_active(DataStore.Article)
  end

  @doc """
  Add Where status = `active status`
  """
  def eq_active(struct) do
    struct
    |> where([a], a.status == ^DataStore.Status.live())
  end
end
