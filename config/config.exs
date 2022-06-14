import Config

config :venyou, Venyou.Repo,
  database: "venyou_repo",
  username: "postgres",
  password: "Momomo12",
  hostname: "localhost"

config :venyou, ecto_repos: [Venyou.Repo]
