defmodule Handler.Tags.CreateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Tags.CreateHandler
  alias TestSupporter.Dummy.TagDummy

  test "authors create_handler test" do

    {:ok, tag} = CreateHandler.run(TagDummy.valid_tag(3))
    assert tag.id == 3
    assert tag.name == "some name3"

    {:error, error1} = CreateHandler.run(TagDummy.valid_tag(1))
    assert error1 == [name: {"has already been taken", []}]

    {:error, error2} = CreateHandler.run(TagDummy.invalid_tag())
    assert error2 == [
             name: {"can't be blank", [validation: :required]},
             status: {"can't be blank", [validation: :required]}
           ]
  end
end
