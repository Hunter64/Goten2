defmodule Goten.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :employe_id, :integer
    field :name, :string
    field :password, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:employe_id, :name, :password])
    |> validate_required([:employe_id, :name, :password])
  end
end
