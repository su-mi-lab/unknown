defmodule Handler.Authors.IndexHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Authors.IndexHandler

  test "authors index_handler test" do
    authors = IndexHandler.run(%{})
    assert Enum.count(authors) == 2
  end
end
