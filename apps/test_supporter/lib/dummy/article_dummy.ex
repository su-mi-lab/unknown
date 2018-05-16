defmodule TestSupporter.Dummy.ArticleDummy do
  @moduledoc false

  def valid_article(id, :delete) do
    Map.put(valid_article(id), :status, DataStore.Status.delete())
  end

  def valid_article(id \\ 1) do
    %{
      id: id,
      body: "some body" <> Integer.to_string(id),
      title: "some title" <> Integer.to_string(id),
      status: DataStore.Status.live(),
      release_date: ~N[2099-01-01 00:00:00.000000],
      tags: []
    }
  end

  def invalid_article, do: %{}

end
