defmodule DataStoreTagTest do
  use TestSupporter.Cases.ModelCase

  doctest DataStore.Tag

  alias DataStore.Tag
  alias TestSupporter.Dummy.TagDummy

  test "changeset with valid attributes" do
    changeset = Tag.changeset(%Tag{}, TagDummy.valid_tag())
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Tag.changeset(%Tag{}, TagDummy.invalid_tag())
    refute changeset.valid?
  end

end
