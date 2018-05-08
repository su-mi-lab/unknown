use Mix.Config

# Configure your database
config :data_store, DataStore.Repo,
       adapter: Ecto.Adapters.MySQL,
       username: "root",
       password: "",
       database: "data_store_repo",
       hostname: "localhost",
       pool_size: 10