defmodule DataStoreAuthorTest do
  use TestSupporter.Cases.ModelCase

  doctest DataStore.Author

  alias DataStore.Author
  alias TestSupporter.Dummy.AuthorDummy

  test "changeset with valid attributes" do
    changeset = Author.changeset(%Author{}, AuthorDummy.valid_author())
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Author.changeset(%Author{}, AuthorDummy.invalid_author())
    refute changeset.valid?
  end

end
