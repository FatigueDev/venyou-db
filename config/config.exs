import Config

# config :venyou, Venyou.Repo,
#   database: "venyou_repo",
#   username: "postgres",
#   password: "Momomo12",
#   hostname: "localhost"

config :venyou, Venyou.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  ssl: true,
  pool_size: 2 # Free tier db only allows 4 connections. Rolling deploys need pool_size*(n+1) connections where n is the number of app replicas.

# config :venyou, Venyou.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   url: {:system, "DATABASE_URL"},
#   database: "",
#   ssl: true,
#   pool_size: 2

config :venyou, ecto_repos: [Venyou.Repo]
