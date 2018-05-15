defmodule Stub.Article do
  @moduledoc false

  @valid_attrs %{body: "some body", title: "some title"}
  @invalid_attrs %{}
  @id 1

  def get_insert_attrs, do: @valid_attrs
  def get_valid_attrs, do: Map.put(@valid_attrs, :id, @id)
  def get_invalid_attrs, do: @invalid_attrs
  def get_article_id, do: @id

end
