defmodule Handler.ArticleTest do
  use DataStore.ModelCase
  doctest Handler.Article

  alias Handler.Article

  test "find by id" do
    article = Article.run(%{"id" => Stub.Article.get_article_id()})
    assert article.title == "some title"
  end
end
