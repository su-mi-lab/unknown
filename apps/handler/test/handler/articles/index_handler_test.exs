defmodule Handler.Articles.IndexHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Articles.IndexHandler

  test "article index_handler test" do
    article = IndexHandler.run(%{})
    assert Enum.count(article) == 3
  end
end
