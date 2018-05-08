defmodule ApiGateway.V1.VersionView do
  use ApiGateway.Web, :view

  def render("version.json", %{varsion: varsion}) do
    %{varsion: varsion}
  end
end