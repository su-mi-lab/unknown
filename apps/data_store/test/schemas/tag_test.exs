defmodule DataStoreTagTest do
  use DataStore.ModelCase

  doctest DataStore.Tag

  alias DataStore.Tag

  test "changeset with valid attributes" do
    changeset = Tag.changeset(%Tag{}, Stub.Tag.get_insert_attrs())
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Tag.changeset(%Tag{}, Stub.Tag.get_invalid_attrs())
    refute changeset.valid?
  end

end
