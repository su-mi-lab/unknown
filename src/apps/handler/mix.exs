defmodule Handler.Mixfile do
  use Mix.Project

  def project do
    [
      app: :handler,
      version: "0.0.1",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :logger_file_backend, :data_store]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:data_store, in_umbrella: true},
      {:test_supporter, [in_umbrella: true, only: :test]}
    ]
  end

end
