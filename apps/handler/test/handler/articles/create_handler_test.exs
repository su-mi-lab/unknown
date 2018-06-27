defmodule Handler.Articles.CreateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Articles.CreateHandler
  alias TestSupporter.Dummy.ArticleDummy

  test "articles create_handler test" do

    {:ok, article} = CreateHandler.run(%{"item" => ArticleDummy.valid_article(3)})
    assert article.title == "some title3"

    {:error, error2} = CreateHandler.run(%{"item" => ArticleDummy.invalid_article()})
    assert error2 == [
             %Handler.Entities.Error{field: :title, message: "can't be blank"},
             %Handler.Entities.Error{field: :status, message: "can't be blank"},
             %Handler.Entities.Error{field: :release_date, message: "can't be blank"}
           ]
  end
end
