defmodule Handler.Tags.UpdateHandlerTest do
  use TestSupporter.Cases.ModelCase

  alias Handler.Tags.UpdateHandler
  alias TestSupporter.Dummy.TagDummy

  test "tags update_handler test" do

    {:ok, tag} = UpdateHandler.run(%{"id" => 2, "tag" => TagDummy.valid_tag(2)})
    assert tag.id == 2
    assert tag.name == "some name2"

    {:ok, tag} = UpdateHandler.run(%{"id" => 2, "tag" => TagDummy.valid_tag(5)})
    assert tag.id == 2
    assert tag.name == "some name5"

    {:error, error2} = UpdateHandler.run(
      %{
        "id" => 2,
        "tag" => %{
          "name" => ""
        }
      }
    )
    assert error2 == [
             %Handler.Entities.Error{field: :name, message: "can't be blank"},
           ]

    UpdateHandler.run(%{"id" => 2, "tag" => TagDummy.valid_tag(2)})
  end
end
