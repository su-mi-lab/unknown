defmodule Handler.Authors.ShowHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Authors.ShowHandler

  test "authors show_handler test" do
    author = ShowHandler.run(%{"id" => 1})

    assert author.id == 1
    assert author.name == "some author name1"
  end
end
