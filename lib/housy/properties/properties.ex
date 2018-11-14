defmodule Housy.Properties do
  @moduledoc """
  The Properties context.
  """

  import Ecto.Query, warn: false
  alias Housy.Repo

  alias Housy.Properties.PropertyType

  @doc """
  Returns the list of property_types.

  ## Examples

      iex> list_property_types()
      [%PropertyType{}, ...]

  """
  def list_property_types do
    Repo.all(PropertyType)
  end

  @doc """
  Gets a single property_type.

  Raises `Ecto.NoResultsError` if the Property type does not exist.

  ## Examples

      iex> get_property_type!(123)
      %PropertyType{}

      iex> get_property_type!(456)
      ** (Ecto.NoResultsError)

  """
  def get_property_type!(id), do: Repo.get!(PropertyType, id)

  @doc """
  Creates a property_type.

  ## Examples

      iex> create_property_type(%{field: value})
      {:ok, %PropertyType{}}

      iex> create_property_type(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_property_type(attrs \\ %{}) do
    %PropertyType{}
    |> PropertyType.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a property_type.

  ## Examples

      iex> update_property_type(property_type, %{field: new_value})
      {:ok, %PropertyType{}}

      iex> update_property_type(property_type, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_property_type(%PropertyType{} = property_type, attrs) do
    property_type
    |> PropertyType.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a PropertyType.

  ## Examples

      iex> delete_property_type(property_type)
      {:ok, %PropertyType{}}

      iex> delete_property_type(property_type)
      {:error, %Ecto.Changeset{}}

  """
  def delete_property_type(%PropertyType{} = property_type) do
    Repo.delete(property_type)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking property_type changes.

  ## Examples

      iex> change_property_type(property_type)
      %Ecto.Changeset{source: %PropertyType{}}

  """
  def change_property_type(%PropertyType{} = property_type) do
    PropertyType.changeset(property_type, %{})
  end

  alias Housy.Properties.PropertyAction

  @doc """
  Returns the list of property_actions.

  ## Examples

      iex> list_property_actions()
      [%PropertyAction{}, ...]

  """
  def list_property_actions do
    Repo.all(PropertyAction)
  end

  @doc """
  Gets a single property_action.

  Raises `Ecto.NoResultsError` if the Property action does not exist.

  ## Examples

      iex> get_property_action!(123)
      %PropertyAction{}

      iex> get_property_action!(456)
      ** (Ecto.NoResultsError)

  """
  def get_property_action!(id), do: Repo.get!(PropertyAction, id)

  @doc """
  Creates a property_action.

  ## Examples

      iex> create_property_action(%{field: value})
      {:ok, %PropertyAction{}}

      iex> create_property_action(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_property_action(attrs \\ %{}) do
    %PropertyAction{}
    |> PropertyAction.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a property_action.

  ## Examples

      iex> update_property_action(property_action, %{field: new_value})
      {:ok, %PropertyAction{}}

      iex> update_property_action(property_action, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_property_action(%PropertyAction{} = property_action, attrs) do
    property_action
    |> PropertyAction.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a PropertyAction.

  ## Examples

      iex> delete_property_action(property_action)
      {:ok, %PropertyAction{}}

      iex> delete_property_action(property_action)
      {:error, %Ecto.Changeset{}}

  """
  def delete_property_action(%PropertyAction{} = property_action) do
    Repo.delete(property_action)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking property_action changes.

  ## Examples

      iex> change_property_action(property_action)
      %Ecto.Changeset{source: %PropertyAction{}}

  """
  def change_property_action(%PropertyAction{} = property_action) do
    PropertyAction.changeset(property_action, %{})
  end

  alias Housy.Properties.Property

  @doc """
  Returns the list of properties.

  ## Examples

      iex> list_properties()
      [%Property{}, ...]

  """
  def list_properties do
    Repo.all(Property)
  end

  @doc """
  Gets a single property.

  Raises `Ecto.NoResultsError` if the Property does not exist.

  ## Examples

      iex> get_property!(123)
      %Property{}

      iex> get_property!(456)
      ** (Ecto.NoResultsError)

  """
  def get_property!(id), do: Repo.get!(Property, id)

  @doc """
  Creates a property.

  ## Examples

      iex> create_property(%{field: value})
      {:ok, %Property{}}

      iex> create_property(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_property(attrs \\ %{}) do
    %Property{}
    |> Property.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a property.

  ## Examples

      iex> update_property(property, %{field: new_value})
      {:ok, %Property{}}

      iex> update_property(property, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_property(%Property{} = property, attrs) do
    property
    |> Property.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Property.

  ## Examples

      iex> delete_property(property)
      {:ok, %Property{}}

      iex> delete_property(property)
      {:error, %Ecto.Changeset{}}

  """
  def delete_property(%Property{} = property) do
    Repo.delete(property)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking property changes.

  ## Examples

      iex> change_property(property)
      %Ecto.Changeset{source: %Property{}}

  """
  def change_property(%Property{} = property) do
    Property.changeset(property, %{})
  end
end
