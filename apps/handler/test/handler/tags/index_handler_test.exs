defmodule Handler.Tags.IndexHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Tags.IndexHandler

  test "tags index_handler test" do
    tags = IndexHandler.run(%{})
    assert Enum.count(tags) == 2
  end
end
