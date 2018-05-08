defmodule DataStore.Mixfile do
  use Mix.Project

  def project do
    [
      app: :data_store,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",

      start_permanent: Mix.env == :prod,
      elixirc_paths: elixirc_paths(Mix.env),
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :mariaex, :ecto],
      mod: { DataStore.Application, [] }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mariaex, "~> 0.8.3"},
      {:ecto, "~> 2.2.10"}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]


  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]]
  end
end
