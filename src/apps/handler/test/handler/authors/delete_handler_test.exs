defmodule Handler.Authors.DeleteHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Authors.DeleteHandler
  alias Handler.Authors.CreateHandler
  alias DataStore.AuthorQuery

  alias TestSupporter.Dummy.AuthorDummy

  test "authors delete_handler test" do

    {:ok, author} = CreateHandler.run(%{"item" => AuthorDummy.valid_author(999)})
    {:ok, _} = DeleteHandler.run(%{"id" => author.id})

    assert Repo.get(AuthorQuery.select_query(), author.id) == nil
  end
end
