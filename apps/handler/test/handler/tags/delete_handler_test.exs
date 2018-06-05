defmodule Handler.Tags.DeleteHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Tags.DeleteHandler
  alias Handler.Tags.CreateHandler
  alias DataStore.TagQuery

  alias TestSupporter.Dummy.TagDummy

  test "tags delete_handler test" do

    {:ok, tag} = CreateHandler.run(TagDummy.valid_tag(999))
    {:ok, _} = DeleteHandler.run(%{"id" => tag.id})

    assert Repo.get(TagQuery.select_query(), tag.id) == nil
  end
end
