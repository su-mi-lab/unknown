defmodule ApiGateway.V1.VersionView do
  @moduledoc false

  use ApiGateway.Web, :view

  def render("version.json", %{varsion: varsion}) do
    %{varsion: varsion}
  end
end
