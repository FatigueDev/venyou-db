defmodule AppRouter do
  use Plug.Router

  plug :match
  plug Plug.Parsers,
       parsers: [:json],
       pass:  ["application/json"],
       json_decoder: Poison
  plug :dispatch

  def parseBody(venueJson) do
    %{
      name: venueJson["name"],
      location: venueJson["location"],
      description: venueJson["description"],
      opening_times: venueJson["opening_times"],
      owner: venueJson["owner"],
      managers: venueJson["managers"],
      status: venueJson["status"]
    }
  end

  get "/venues" do
    send_resp(conn, 200, Poison.encode!(Venyou.Venue |> Venyou.Repo.all))
  end

  get "/venues/:id" do
    send_resp(conn, 200, Poison.encode!(Venyou.Venue |> Venyou.Repo.get(id)))
  end

  post "/venues" do
    venue = parseBody(conn.body_params)
    IO.inspect venue
    Venyou.Repo.insert(venue)
    send_resp(conn, 200, "Added venue")
  end

  put "/venues/:id" do
    venue = Venyou.Repo.get(Venyou.Venue, id)
    changeset = Venyou.Venue.changeset(venue, parseBody(conn.body_params))
    Venyou.Repo.update(changeset)
    send_resp(conn, 200, "Updated venue #{id}")
  end

  delete "/venues/:id" do
    venue = Venyou.Repo.get(Venyou.Venue, id)
    Venyou.Repo.delete(venue)
    send_resp(conn, 200, "Deleted venue #{id}")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

end
