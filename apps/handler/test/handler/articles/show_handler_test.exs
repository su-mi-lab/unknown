defmodule Handler.Articles.ShowHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Articles.ShowHandler

  test "article_handler test" do
    article = ShowHandler.run(%{"id" => 1})
    assert article.title == "some title1"
  end
end
