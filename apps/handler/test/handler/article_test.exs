defmodule Handler.ArticleTest do
  use DataStore.ModelCase
  doctest Handler.Article

  alias Handler.Article

  test "find by all" do
    assert Article.all |> Enum.count == 1
  end

  test "find by id" do
    article = Article.find(Stub.Article.get_article_id())
    assert article.title == "some title"
  end
end
