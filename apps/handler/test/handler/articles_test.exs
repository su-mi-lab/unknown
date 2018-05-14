defmodule Handler.ArticlesTest do
  use DataStore.ModelCase
  doctest Handler.Articles

  alias Handler.Articles

  test "greets the world" do
    assert Handler.Articles.hello() == :world
  end

  test "find by id" do

    article = Articles.find(1)

    assert article.title == "some title"
  end
end
