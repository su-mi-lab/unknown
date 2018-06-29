defmodule Handler.Articles.UpdateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Articles.UpdateHandler
  alias TestSupporter.Dummy.ArticleDummy

  test "articles update_handler test" do

    {:ok, article} = UpdateHandler.run(%{"id" => 2, "article" => ArticleDummy.valid_article(2)})
    assert article.id == 2
    assert article.title == "some title2"

    {:ok, article} = UpdateHandler.run(%{"id" => 2, "article" => ArticleDummy.valid_article(5)})
    assert article.id == 2
    assert article.title == "some title5"

    {:error, error2} = UpdateHandler.run(
      %{
        "id" => 2,
        "article" => %{
          "title" => ""
        }
      }
    )
    assert error2 == [
             %Handler.Entities.Error{field: :title, message: "can't be blank"},
           ]

    UpdateHandler.run(%{"id" => 2, "article" => ArticleDummy.valid_article(2)})
  end
end
