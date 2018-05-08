defmodule ApiGateway.V1.VersionController do
  use ApiGateway.Web, :controller

  def index(conn, _params) do
    render(conn, "version.json", varsion: "v1.0.0")
  end
end