defmodule ApiGateway.V1.ArticleViewTest do
  use ApiGateway.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders index.json" do
    articles = [%{id: 1, body: nil, title: nil},%{id: 2, body: nil, title: nil}]
    res = render(ApiGateway.V1.ArticleView, "index.json", articles: articles)
    assert Enum.count(res.data) == 2
  end

  test "renders show.json" do
    article = %{id: 1, body: nil, title: nil}
    res = render(ApiGateway.V1.ArticleView, "show.json", article: article)
    assert res.data == article
  end
end
