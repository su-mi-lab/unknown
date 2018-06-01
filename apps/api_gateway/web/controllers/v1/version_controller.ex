defmodule ApiGateway.V1.VersionController do

  @moduledoc false

  use ApiGateway.Web, :controller

  def index(conn, _params) do
    render(conn, "version.json", varsion: "v0.3.0")
  end
end
