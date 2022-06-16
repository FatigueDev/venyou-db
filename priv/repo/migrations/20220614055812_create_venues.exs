defmodule Venyou.Repo.Migrations.CreateVenues do
  use Ecto.Migration

  def change do
    create table(:venue) do
      add :name, :string, default: ""
      add :location, :string, default: ""
      add :description, :string, default: ""
      add :opening_times, :string, default: ""
      add :owner, :string, default: ""
      add :status, :boolean, default: false
    end
  end
end
