defmodule ApiGateway.V1.ArticleController do
  use ApiGateway.Web, :controller

  alias Handler.Article

  def index(conn, _params) do
    articles = Article.all()
    render(conn, "index.json", articles: articles)
  end

  def show(conn, %{"id" => id}) do
    article = Article.find(id)
    render(conn, "show.json", article: article)
  end
end