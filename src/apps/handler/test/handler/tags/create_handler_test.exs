defmodule Handler.Tags.CreateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Tags.CreateHandler
  alias TestSupporter.Dummy.TagDummy

  test "tags create_handler test" do

    {:ok, tag} = CreateHandler.run(%{"item" => TagDummy.valid_tag(3)})
    assert tag.name == "some name3"

    {:error, error1} = CreateHandler.run(%{"item" => TagDummy.valid_tag(1)})
    assert error1 == [
             %Handler.Entities.Error{field: :name, message: "has already been taken"}
           ]

    {:error, error2} = CreateHandler.run(%{"item" => TagDummy.invalid_tag()})
    assert error2 == [
             %Handler.Entities.Error{field: :name, message: "can't be blank"},
             %Handler.Entities.Error{field: :status, message: "can't be blank"}
           ]
  end
end
