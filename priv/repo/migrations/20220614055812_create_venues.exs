defmodule Venyou.Repo.Migrations.CreateVenues do
  use Ecto.Migration

  def change do
    create table(:venue) do
      add :name, :string
      add :location, :string
      add :description, :string
      add :opening_times, :string
      add :owner, :string
      add :managers, {:array, :string}
      add :status, :boolean
    end
  end
end
