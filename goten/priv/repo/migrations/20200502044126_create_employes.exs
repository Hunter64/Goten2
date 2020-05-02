defmodule Goten.Repo.Migrations.CreateEmployes do
  use Ecto.Migration

  def change do
    create table(:employes) do
      add :full_name, :string
      add :firts_name, :string
      add :second_name, :string
      add :last_name_f, :string
      add :last_name_m, :string
      add :birth_date, :date

      timestamps()
    end

  end
end
