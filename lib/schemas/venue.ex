defmodule Venyou.Venue do
  use Ecto.Schema
  require Ecto.Query
  import Ecto.Changeset

  schema "venue" do
    field :name, :string, default: ""
    field :location, :string, default: ""
    field :description, :string, default: ""
    field :opening_times, :string, default: ""
    field :owner, :string, default: ""
    field :status, :boolean, default: false
  end

  def changeset(venue, params \\ %{}) do
    venue
    |> cast(params, [:name, :location, :description, :opening_times, :owner, :status])
  end

end
