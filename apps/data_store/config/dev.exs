use Mix.Config

# Configure your database
config :data_store, DataStore.Repo,
       adapter: Ecto.Adapters.MySQL,
       username: "root",
       password: "",
       database: "data_store_repo",
       hostname: System.get_env("DB_HOST"),
       pool_size: 10