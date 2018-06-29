defmodule Handler.Authors.UpdateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Authors.UpdateHandler
  alias TestSupporter.Dummy.AuthorDummy

  test "authors update_handler test" do

    {:ok, author} = UpdateHandler.run(%{"id" => 2, "author" => AuthorDummy.valid_author(2)})
    assert author.id == 2
    assert author.name == "some author name2"

    {:ok, author} = UpdateHandler.run(%{"id" => 2, "author" => AuthorDummy.valid_author(5)})
    assert author.id == 2
    assert author.name == "some author name5"

    {:error, error2} = UpdateHandler.run(
      %{
        "id" => 2,
        "author" => %{
          "name" => ""
        }
      }
    )
    assert error2 == [
             %Handler.Entities.Error{field: :name, message: "can't be blank"},
           ]

    UpdateHandler.run(%{"id" => 2, "author" => AuthorDummy.valid_author(2)})
  end
end
