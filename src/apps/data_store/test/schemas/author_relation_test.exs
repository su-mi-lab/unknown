defmodule DataStoreAuthorRelationTest do
  use TestSupporter.Cases.ModelCase

  doctest DataStore.AuthorRelation

  alias DataStore.AuthorRelation
  alias TestSupporter.Dummy.AuthorRelationDummy

  test "changeset with valid attributes" do
    changeset = AuthorRelation.changeset(%AuthorRelation{}, AuthorRelationDummy.valid_author_relation(1, 1))
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = AuthorRelation.changeset(%AuthorRelation{}, AuthorRelationDummy.invalid_author_relation())
    refute changeset.valid?
  end

end
