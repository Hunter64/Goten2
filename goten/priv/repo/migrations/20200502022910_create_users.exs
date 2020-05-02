defmodule Goten.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :employe_id, :integer
      add :name, :string
      add :password, :string

      timestamps()
    end

  end
end
