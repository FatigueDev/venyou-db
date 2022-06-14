defmodule Venyou.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Venyou.Repo,
      {
        Plug.Cowboy,
        scheme: :http,
        plug: Venyou.Plug,
        options: [port: 4001]
      }
    ]

    opts = [strategy: :one_for_one, name: Venyou.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
