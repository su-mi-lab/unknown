defmodule ApiGateway.V1.ArticleController do
  use ApiGateway.Web, :controller

  alias Handler.Article

  def index(conn, _params) do
    render(conn, "version.json", varsion: "v1.0.0")
  end

  def show(conn, %{"id" => id}) do
    article = Article.find(id)
    render(conn, "show.json", article: article)
  end
end