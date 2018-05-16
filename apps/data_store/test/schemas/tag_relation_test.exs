defmodule DataStoreTagRelationTest do
  use TestSupporter.Cases.ModelCase

  doctest DataStore.TagRelation

  alias DataStore.TagRelation
  alias TestSupporter.Dummy.TagRelationDummy

  test "changeset with valid attributes" do
    changeset = TagRelation.changeset(%TagRelation{}, TagRelationDummy.valid_tag_relation(1, 1))
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TagRelation.changeset(%TagRelation{}, TagRelationDummy.invalid_tag_relation())
    refute changeset.valid?
  end

end
