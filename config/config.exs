import Config

config :venyou, Venyou.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: {:system, "DATABASE_URL"},
  database: "",
  ssl: true,
  pool_size: 2

config :venyou, ecto_repos: [Venyou.Repo]
