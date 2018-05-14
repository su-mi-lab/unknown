defmodule Handler.Mixfile do
  use Mix.Project

  def project do
    [
      app: :handler,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :data_store]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:data_store, in_umbrella: true}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "../../test/support"]
  defp elixirc_paths(_),     do: ["lib"]

end
