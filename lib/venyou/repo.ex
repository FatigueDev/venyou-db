defmodule Venyou.Repo do
  use Ecto.Repo,
    otp_app: :venyou,
    adapter: Ecto.Adapters.Postgres
end
