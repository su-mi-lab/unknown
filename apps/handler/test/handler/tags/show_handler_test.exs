defmodule Handler.Tags.ShowHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Tags.ShowHandler

  test "tags show_handler test" do
    tag = ShowHandler.run(%{"id" => 1})

    assert tag.id == 1
    assert tag.name == "some name1"
  end
end
