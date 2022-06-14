config :venyou, Venyou.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: {:system, "DATABASE_URL"},
  database: "venyou_repo",
  ssl: true,
  pool_size: 2
