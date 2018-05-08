defmodule ApiGateway.Router do
  use ApiGateway.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiGateway do
    pipe_through :api
  end
end
