defmodule ApiGateway.V1.ArticleControllerTest do

  use TestSupporter.Cases.ConnCase
  use TestSupporter.Cases.ModelCase

  alias Handler.ArticleHandler

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "shows chosen resource", %{conn: conn} do
    article = ArticleHandler.run(%{"id" => 1})
    conn = get conn, v1_article_path(conn, :show, article)
    assert json_response(conn, 200)["data"]["id"] == article.id
  end

end
