import Config

config :venyou, Venyou.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: "postgresql://7bd9ead8-400e-458a-a91d-be8b55c200ee-user:pw-35bcc6bd-baf6-4c65-980f-2202bcfee000@postgres-free-tier-v2020.gigalixir.com:5432/7bd9ead8-400e-458a-a91d-be8b55c200ee",
  database: "7bd9ead8-400e-458a-a91d-be8b55c200ee",
  ssl: true,
  pool_size: 2

config :venyou, ecto_repos: [Venyou.Repo]
