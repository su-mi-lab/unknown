defmodule ApiGateway.V1.ArticleViewTest do
  use ApiGateway.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  alias Handler.Article

#  test "renders version.json" do
#    render(ApiGateway.V1.ArticleView, "show.json", article: %{})
#    |> IO.inspect()
#  end
end
