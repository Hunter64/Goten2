defmodule Goten.Employes do
  @moduledoc """
  The Employes context.
  """

  import Ecto.Query, warn: false
  alias Goten.Repo

  alias Goten.Employes.Employe

  @doc """
  Returns the list of employes.

  ## Examples

      iex> list_employes()
      [%Employe{}, ...]

  """
  def list_employes do
    Repo.all(Employe)
  end

  @doc """
  Gets a single employe.

  Raises `Ecto.NoResultsError` if the Employe does not exist.

  ## Examples

      iex> get_employe!(123)
      %Employe{}

      iex> get_employe!(456)
      ** (Ecto.NoResultsError)

  """
  def get_employe!(id), do: Repo.get!(Employe, id)

  @doc """
  Creates a employe.

  ## Examples

      iex> create_employe(%{field: value})
      {:ok, %Employe{}}

      iex> create_employe(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_employe(attrs \\ %{}) do
    %Employe{}
    |> Employe.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a employe.

  ## Examples

      iex> update_employe(employe, %{field: new_value})
      {:ok, %Employe{}}

      iex> update_employe(employe, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_employe(%Employe{} = employe, attrs) do
    employe
    |> Employe.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a employe.

  ## Examples

      iex> delete_employe(employe)
      {:ok, %Employe{}}

      iex> delete_employe(employe)
      {:error, %Ecto.Changeset{}}

  """
  def delete_employe(%Employe{} = employe) do
    Repo.delete(employe)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking employe changes.

  ## Examples

      iex> change_employe(employe)
      %Ecto.Changeset{source: %Employe{}}

  """
  def change_employe(%Employe{} = employe) do
    Employe.changeset(employe, %{})
  end
end
