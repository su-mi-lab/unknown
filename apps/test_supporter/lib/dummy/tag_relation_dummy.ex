defmodule TestSupporter.Dummy.TagRelationDummy do
  @moduledoc false

  def valid_tag_relation(article_id, tag_id, id \\ 1) do
    %{
      id: id,
      article_id: article_id,
      tag_id: tag_id
    }
  end

  def invalid_tag_relation, do: %{}

end
