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
      status: venueJson["status"]
    }
  end

  def parseBodyRough(venueJson) do
    %Venyou.Venue{
      name: venueJson["name"],
      location: venueJson["location"],
      description: venueJson["description"],
      opening_times: venueJson["opening_times"],
      owner: venueJson["owner"],
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
    venue = parseBodyRough(conn.body_params)
    {result, newVenue} = Venyou.Repo.insert(venue)
    dbVenue = Venyou.Repo.get(Venyou.Venue, newVenue.id)
    send_resp(conn, result, Poison.encode!(dbVenue))
  end

  put "/venues/:id" do
    venue = Venyou.Repo.get(Venyou.Venue, id)
    changeset = Venyou.Venue.changeset(venue, parseBody(conn.body_params))
    Venyou.Repo.update(changeset)
    send_resp(conn, 200, "Venue updated successfully.")
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
