# Do not print debug messages in production
config :logger,
       backends: [{LoggerFileBackend, :log}]

# Configures Elixir's Logger
config :logger, :log,
       path: "priv/log/app.log",
       level: :info,
       format: "$time $metadata[$level] $message\n"
