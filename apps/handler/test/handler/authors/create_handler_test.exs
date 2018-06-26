defmodule Handler.Authors.CreateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Authors.CreateHandler
  alias TestSupporter.Dummy.AuthorDummy

  test "authors create_handler test" do

    {:ok, author} = CreateHandler.run(%{"item" => AuthorDummy.valid_author(3)})
    assert author.name == "some author name3"

    {:error, error1} = CreateHandler.run(%{"item" => AuthorDummy.valid_author(1)})
    assert error1 == [
             %Handler.Entities.Error{field: :name, message: "has already been taken"}
           ]

    {:error, error2} = CreateHandler.run(%{"item" => AuthorDummy.invalid_author()})
    assert error2 == [
             %Handler.Entities.Error{field: :name, message: "can't be blank"},
             %Handler.Entities.Error{field: :status, message: "can't be blank"}
           ]
  end
end
