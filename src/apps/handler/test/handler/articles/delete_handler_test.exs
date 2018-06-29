defmodule Handler.Articles.DeleteHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Articles.DeleteHandler
  alias Handler.Articles.CreateHandler
  alias DataStore.ArticleQuery

  alias TestSupporter.Dummy.ArticleDummy

  test "articles delete_handler test" do

    {:ok, article} = CreateHandler.run(%{"item" => ArticleDummy.valid_article(999)})
    {:ok, _} = DeleteHandler.run(%{"id" => article.id})

    assert Repo.get(ArticleQuery.select_query(), article.id) == nil
  end
end
