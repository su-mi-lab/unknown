defmodule DataStoreTest do
  use DataStore.ModelCase

  doctest DataStore.Article

  alias DataStore.Article

  @valid_attrs %{body: "some body", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, @valid_attrs)

    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, @invalid_attrs)
    refute changeset.valid?
  end
end
