defmodule ApiGateway.V1.ArticleController do
  use ApiGateway.Web, :controller

  def show(conn, %{"id" => id}) do
    article = Handler.Article.run(%{"id" => id})
    render(conn, "show.json", article: article)
  end

end
