defmodule Venyou.MixProject do
  use Mix.Project

  def project do
    [
      app: :venyou,
      version: "0.1.0",
      elixir: "~> 1.13",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Venyou.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:poison, "~> 5.0"}
    ]
  end
end
