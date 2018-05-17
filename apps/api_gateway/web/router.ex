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

      get "/:handler", HandlerController, :index
      get "/:handler/:id", HandlerController, :show
      post "/:handler", HandlerController, :create
      put "/:handler", HandlerController, :update
      delete "/:handler", HandlerController, :delete
    end
  end

end
