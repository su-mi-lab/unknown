defmodule TestSupporter.Dummy.AuthorRelationDummy do
  @moduledoc false

  def valid_author_relation(article_id, author_id, id \\ 1) do
    %{
      id: id,
      article_id: article_id,
      author_id: author_id
    }
  end

  def invalid_author_relation, do: %{}

end
