defmodule ApiGateway.V1.ArticleControllerTest do

  use ApiGateway.ConnCase
  use DataStore.ModelCase

  alias Handler.ArticleHandler

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "shows chosen resource", %{conn: conn} do
    article = ArticleHandler.run(%{"id" => Stub.Article.get_article_id()})
    conn = get conn, v1_article_path(conn, :show, article)
    assert json_response(conn, 200)["data"]["id"] == article.id
  end

end
