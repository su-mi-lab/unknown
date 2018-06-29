defmodule DataStoreArticleTest do
  use TestSupporter.Cases.ModelCase

  doctest DataStore.Article

  alias DataStore.Article
  alias TestSupporter.Dummy.ArticleDummy

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, ArticleDummy.valid_article())
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, ArticleDummy.invalid_article())
    refute changeset.valid?
  end

end
