defmodule Venyou.Venue do
  use Ecto.Schema
  require Ecto.Query
  import Ecto.Changeset

  schema "venue" do
    field :name, :string
    field :location, :string
    field :description, :string
    field :opening_times, :string
    field :owner, :string
    field :managers, {:array, :string}
    field :status, :boolean
  end

  def changeset(venue, params \\ %{}) do
    venue
    |> cast(params, [:name, :location, :description, :opening_times, :owner, :managers, :status])
  end

end
