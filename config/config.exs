import Config

config :venyou, HelloWeb.Plug,
  load_from_system_env: true,
  url: [host: "venyou-11428.nodechef.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE")

config :venyou, Venyou.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true

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
