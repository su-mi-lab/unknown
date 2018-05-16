defmodule DataStoreTagRelationTest do
  use DataStore.ModelCase

  doctest DataStore.TagRelation

  alias DataStore.TagRelation

  test "changeset with valid attributes" do
    changeset = TagRelation.changeset(%TagRelation{}, Stub.TagRelation.get_insert_attrs())
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TagRelation.changeset(%TagRelation{}, Stub.TagRelation.get_invalid_attrs())
    refute changeset.valid?
  end

end
