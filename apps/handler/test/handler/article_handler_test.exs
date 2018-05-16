defmodule Handler.ArticleHandlerTest do
  use DataStore.ModelCase
  doctest Handler.ArticleHandler

  alias Handler.ArticleHandler

  test "find by id" do
    article = ArticleHandler.run(%{"id" => Stub.Article.get_article_id()})
    assert article.title == "some title"
  end
end
