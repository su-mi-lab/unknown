defmodule TestSupporter.Dummy.TagDummy do
  @moduledoc false

  def valid_tag(id, :delete) do
    Map.put(valid_tag(id), :status, DataStore.Status.delete())
  end

  def valid_tag(id \\ 1) do
    %{
      id: id,
      name: "some name" <> Integer.to_string(id),
      status: DataStore.Status.live(),
    }
  end

  def invalid_tag, do: %{}

end
