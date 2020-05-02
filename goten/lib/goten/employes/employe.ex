defmodule Goten.Employes.Employe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employes" do
    field :birth_date, :date
    field :firts_name, :string
    field :full_name, :string
    field :last_name_f, :string
    field :last_name_m, :string
    field :second_name, :string

    timestamps()
  end

  @doc false
  def changeset(employe, attrs) do
    employe
    |> cast(attrs, [:full_name, :firts_name, :second_name, :last_name_f, :last_name_m, :birth_date])
    |> validate_required([:full_name, :firts_name, :second_name, :last_name_f, :last_name_m, :birth_date])
  end
end
