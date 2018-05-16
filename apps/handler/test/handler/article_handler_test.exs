defmodule Handler.ArticleHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.ArticleHandler

  test "article_handler test" do
    article = ArticleHandler.run(%{"id" => 1})
    assert article.title == "some title1"
  end
end
