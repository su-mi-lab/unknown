defmodule TestSupporter.Dummy.AuthorDummy do
  @moduledoc false

  def valid_author(id, :delete) do
    Map.put(valid_author(id), :status, DataStore.Status.delete())
  end

  def valid_author(id \\ 1) do
    %{
      id: id,
      name: "some author name" <> Integer.to_string(id),
      status: DataStore.Status.live(),
    }
  end

  def invalid_author, do: %{}

end
