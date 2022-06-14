import Config

config :venyou, Venyou.Repo,
  database: "7bd9ead8-400e-458a-a91d-be8b55c200ee",
  username: "7bd9ead8-400e-458a-a91d-be8b55c200ee-user",
  password: "pw-35bcc6bd-baf6-4c65-980f-2202bcfee000",
  hostname: "postgres-free-tier-v2020.gigalixir.com",
  port: "5432"

config :venyou, ecto_repos: [Venyou.Repo]
