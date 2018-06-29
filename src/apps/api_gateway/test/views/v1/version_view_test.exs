defmodule ApiGateway.V1.VersionViewTest do
  use TestSupporter.Cases.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders version.json" do
    assert render(ApiGateway.V1.VersionView, "version.json", varsion: "v1.0.0") ==
             %{varsion: "v1.0.0"}
  end
end
