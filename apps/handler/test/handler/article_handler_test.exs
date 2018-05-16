defmodule Handler.ArticleHandlerTest do
  use DataStore.ModelCase

  alias Handler.ArticleHandler

  test "article_handler test" do
    article = ArticleHandler.run(%{"id" => Stub.Article.get_article_id()})
    assert article.title == "some title"
  end
end
