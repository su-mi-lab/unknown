defmodule DataStoreTest do
  use DataStore.ModelCase

  doctest DataStore.Article

  alias DataStore.Article

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, Stub.Article.get_insert_attrs())

    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, Stub.Article.get_invalid_attrs())
    refute changeset.valid?
  end
end
