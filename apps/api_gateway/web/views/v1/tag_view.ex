defmodule ApiGateway.V1.TagView do
  @moduledoc false

  use ApiGateway.Web, :view

  def render("index.json", %{tags: tags}) do
    %{data: render_many(tags, ApiGateway.V1.ArticleView, "tag.json")}
  end

  def render("tag.json", %{tag: tag}) do
        %{
          id: tag.id,
          name: tag.name
        }
  end
end
