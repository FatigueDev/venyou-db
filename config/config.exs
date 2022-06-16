import Config

config :venyou, Venyou.Repo,
  database: "182f6029-be42-4794-a307-bb3774a9f975",
  username: "182f6029-be42-4794-a307-bb3774a9f975-user",
  password: "pw-102e0183-3292-4548-aedb-e90dd1b5ce7b",
  url: "postgresql://182f6029-be42-4794-a307-bb3774a9f975-user:pw-102e0183-3292-4548-aedb-e90dd1b5ce7b@postgres-free-tier-v2020.gigalixir.com:5432/182f6029-be42-4794-a307-bb3774a9f975"
  hostname: "https://venyou.gigalixirapp.com/"

config :venyou, ecto_repos: [Venyou.Repo]
