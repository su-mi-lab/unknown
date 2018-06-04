defmodule Handler.Articles.ShowHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Articles.ShowHandler

  test "article_handler test" do
    article = ShowHandler.run(%{"id" => 1})

    assert article.title == "some title1"
    assert article.body == "some body1"
    assert article.description == "some description1"
    assert article.release_date == ~N[2099-01-01 00:00:00.000000]
    assert Enum.count(article.tags) == 2
    assert Enum.count(article.authors) == 2
  end
end
