# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :api_gateway, ApiGateway.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WO8sCJqGfx/RB8N6IjlSLvOV8Gld/hGykotdM1BekrXl6v/kH70SeLsxvrA5ozsw",
  render_errors: [view: ApiGateway.ErrorView, accepts: ~w(json)],
  pubsub: [name: ApiGateway.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
