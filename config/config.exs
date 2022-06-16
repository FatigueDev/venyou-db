import Config

config :venyou, Venyou.Repo,
    adapter: Ecto.Adapters.Postgres,
    database: "",
    ssl: true,
    url: System.get_env("DATABASE_URL"),
    pool_size: String.to_integer(System.get_env("POOL_SIZE"))

config :venyou, Venyou.Plug,
  load_from_system_env: true,
  http: [port: {:system, "PORT"}],
  server: true,
  secret_key_base: "${SECRET_KEY_BASE}",
  url: [host: "${APP_NAME}.gigalixirapp.com", port: 443]

# config :venyou, Venyou.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   url: System.get_env("DATABASE_URL"),
#   ssl: true,
#   pool_size: 2

# config :venyou, Venyou.Repo,
#   adapter: Ecto.Adapters.Postgres,
#   url: {:system, "DATABASE_URL"},
#   database: "",
#   ssl: true,
#   pool_size: 2

config :venyou, ecto_repos: [Venyou.Repo]
