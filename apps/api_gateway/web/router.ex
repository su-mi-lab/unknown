defmodule ApiGateway.Router do
  @moduledoc false

  use ApiGateway.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ApiGateway do
    pipe_through :api

    scope "/v1", V1, as: :v1 do
      get "/", VersionController, :index
    end
  end

end
