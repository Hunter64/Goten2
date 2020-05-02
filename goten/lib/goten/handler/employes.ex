defmodule Goten.Employes do
  @moduledoc """
  The Employes context.
  """

  import Ecto.Query, warn: false
  alias Goten.Repo

  alias Goten.EmployeSchema

  @doc """
  Returns the list of employes.

  ## Examples

      iex> list_employes()
      [%EmployeSchema{}, ...]

  """
  def list_employes do
    Repo.all(EmployeSchema)
  end

  @doc """
  Gets a single employe.

  Raises `Ecto.NoResultsError` if the Employe does not exist.

  ## Examples

      iex> get_employe!(123)
      %EmployeSchema{}

      iex> get_employe!(456)
      ** (Ecto.NoResultsError)

  """
  def get_employe!(id), do: Repo.get!(EmployeSchema, id)

  @doc """
  Creates a employe.

  ## Examples

      iex> create_employe(%{field: value})
      {:ok, %EmployeSchema{}}

      iex> create_employe(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_employe(attrs \\ %{}) do
    %EmployeSchema{}
    |> EmployeSchema.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a employe.

  ## Examples

      iex> update_employe(employe, %{field: new_value})
      {:ok, %EmployeSchema{}}

      iex> update_employe(employe, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_employe(%EmployeSchema{} = employe, attrs) do
    employe
    |> EmployeSchema.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a employe.

  ## Examples

      iex> delete_employe(employe)
      {:ok, %EmployeSchema{}}

      iex> delete_employe(employe)
      {:error, %Ecto.Changeset{}}

  """
  def delete_employe(%EmployeSchema{} = employe) do
    Repo.delete(employe)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking employe changes.

  ## Examples

      iex> change_employe(employe)
      %Ecto.Changeset{source: %EmployeSchema{}}

  """
  def change_employe(%EmployeSchema{} = employe) do
    EmployeSchema.changeset(employe, %{})
  end
end
