defmodule ApiGateway.V1.ArticleView do
  @moduledoc false

  use ApiGateway.Web, :view

  def render("index.json", %{articles: articles}) do
    %{data: render_many(articles, ApiGateway.V1.ArticleView, "article.json")}
  end

  def render("show.json", %{article: article}) do
    %{data: render_one(article, ApiGateway.V1.ArticleView, "article.json")}
  end

  def render("article.json", %{article: article}) do
    %{
      id: article.id,
      title: article.title,
      body: article.body,
    }
  end
end
