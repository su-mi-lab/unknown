defmodule ApiGateway.Mixfile do
  use Mix.Project

  def project do
    [
      app: :api_gateway,
      version: "0.0.1",
      elixir: "~> 1.4",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {ApiGateway, []},
      extra_applications: [:logger, :logger_file_backend, :data_store]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(_), do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.3.2"},
      {:phoenix_pubsub, "~> 1.0"},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:data_store, in_umbrella: true},
      {:handler, in_umbrella: true},
      {:test_supporter, [in_umbrella: true, only: :test]}
    ]
  end
end
