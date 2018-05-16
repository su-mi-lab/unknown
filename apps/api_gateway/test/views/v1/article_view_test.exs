defmodule ApiGateway.V1.ArticleViewTest do
  use TestSupporter.Cases.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  alias TestSupporter.Dummy.ArticleDummy

  test "renders index.json" do
    articles = [ArticleDummy.valid_article(1), ArticleDummy.valid_article(2)]
    res = render(ApiGateway.V1.ArticleView, "index.json", articles: articles)
    assert Enum.count(res.data) == 2
  end

  test "renders show.json" do
    article = ArticleDummy.valid_article(1)
    res = render(ApiGateway.V1.ArticleView, "show.json", article: article)

    assert res.data == Map.delete(article, :status)
  end
end
