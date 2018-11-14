defmodule Housy.PropertiesTest do
  use Housy.DataCase

  alias Housy.Properties

  describe "property_types" do
    alias Housy.Properties.PropertyType

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def property_type_fixture(attrs \\ %{}) do
      {:ok, property_type} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Properties.create_property_type()

      property_type
    end

    test "list_property_types/0 returns all property_types" do
      property_type = property_type_fixture()
      assert Properties.list_property_types() == [property_type]
    end

    test "get_property_type!/1 returns the property_type with given id" do
      property_type = property_type_fixture()
      assert Properties.get_property_type!(property_type.id) == property_type
    end

    test "create_property_type/1 with valid data creates a property_type" do
      assert {:ok, %PropertyType{} = property_type} = Properties.create_property_type(@valid_attrs)
      assert property_type.name == "some name"
    end

    test "create_property_type/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Properties.create_property_type(@invalid_attrs)
    end

    test "update_property_type/2 with valid data updates the property_type" do
      property_type = property_type_fixture()
      assert {:ok, %PropertyType{} = property_type} = Properties.update_property_type(property_type, @update_attrs)
      assert property_type.name == "some updated name"
    end

    test "update_property_type/2 with invalid data returns error changeset" do
      property_type = property_type_fixture()
      assert {:error, %Ecto.Changeset{}} = Properties.update_property_type(property_type, @invalid_attrs)
      assert property_type == Properties.get_property_type!(property_type.id)
    end

    test "delete_property_type/1 deletes the property_type" do
      property_type = property_type_fixture()
      assert {:ok, %PropertyType{}} = Properties.delete_property_type(property_type)
      assert_raise Ecto.NoResultsError, fn -> Properties.get_property_type!(property_type.id) end
    end

    test "change_property_type/1 returns a property_type changeset" do
      property_type = property_type_fixture()
      assert %Ecto.Changeset{} = Properties.change_property_type(property_type)
    end
  end

  describe "property_actions" do
    alias Housy.Properties.PropertyAction

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def property_action_fixture(attrs \\ %{}) do
      {:ok, property_action} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Properties.create_property_action()

      property_action
    end

    test "list_property_actions/0 returns all property_actions" do
      property_action = property_action_fixture()
      assert Properties.list_property_actions() == [property_action]
    end

    test "get_property_action!/1 returns the property_action with given id" do
      property_action = property_action_fixture()
      assert Properties.get_property_action!(property_action.id) == property_action
    end

    test "create_property_action/1 with valid data creates a property_action" do
      assert {:ok, %PropertyAction{} = property_action} = Properties.create_property_action(@valid_attrs)
      assert property_action.name == "some name"
    end

    test "create_property_action/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Properties.create_property_action(@invalid_attrs)
    end

    test "update_property_action/2 with valid data updates the property_action" do
      property_action = property_action_fixture()
      assert {:ok, %PropertyAction{} = property_action} = Properties.update_property_action(property_action, @update_attrs)
      assert property_action.name == "some updated name"
    end

    test "update_property_action/2 with invalid data returns error changeset" do
      property_action = property_action_fixture()
      assert {:error, %Ecto.Changeset{}} = Properties.update_property_action(property_action, @invalid_attrs)
      assert property_action == Properties.get_property_action!(property_action.id)
    end

    test "delete_property_action/1 deletes the property_action" do
      property_action = property_action_fixture()
      assert {:ok, %PropertyAction{}} = Properties.delete_property_action(property_action)
      assert_raise Ecto.NoResultsError, fn -> Properties.get_property_action!(property_action.id) end
    end

    test "change_property_action/1 returns a property_action changeset" do
      property_action = property_action_fixture()
      assert %Ecto.Changeset{} = Properties.change_property_action(property_action)
    end
  end

  describe "properties" do
    alias Housy.Properties.Property

    @valid_attrs %{description: "some description", garage_size: 42, number_of_bathrooms: 42, price: 120.5, rooms_count: 42}
    @update_attrs %{description: "some updated description", garage_size: 43, number_of_bathrooms: 43, price: 456.7, rooms_count: 43}
    @invalid_attrs %{description: nil, garage_size: nil, number_of_bathrooms: nil, price: nil, rooms_count: nil}

    def property_fixture(attrs \\ %{}) do
      {:ok, property} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Properties.create_property()

      property
    end

    test "list_properties/0 returns all properties" do
      property = property_fixture()
      assert Properties.list_properties() == [property]
    end

    test "get_property!/1 returns the property with given id" do
      property = property_fixture()
      assert Properties.get_property!(property.id) == property
    end

    test "create_property/1 with valid data creates a property" do
      assert {:ok, %Property{} = property} = Properties.create_property(@valid_attrs)
      assert property.description == "some description"
      assert property.garage_size == 42
      assert property.number_of_bathrooms == 42
      assert property.price == 120.5
      assert property.rooms_count == 42
    end

    test "create_property/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Properties.create_property(@invalid_attrs)
    end

    test "update_property/2 with valid data updates the property" do
      property = property_fixture()
      assert {:ok, %Property{} = property} = Properties.update_property(property, @update_attrs)
      assert property.description == "some updated description"
      assert property.garage_size == 43
      assert property.number_of_bathrooms == 43
      assert property.price == 456.7
      assert property.rooms_count == 43
    end

    test "update_property/2 with invalid data returns error changeset" do
      property = property_fixture()
      assert {:error, %Ecto.Changeset{}} = Properties.update_property(property, @invalid_attrs)
      assert property == Properties.get_property!(property.id)
    end

    test "delete_property/1 deletes the property" do
      property = property_fixture()
      assert {:ok, %Property{}} = Properties.delete_property(property)
      assert_raise Ecto.NoResultsError, fn -> Properties.get_property!(property.id) end
    end

    test "change_property/1 returns a property changeset" do
      property = property_fixture()
      assert %Ecto.Changeset{} = Properties.change_property(property)
    end
  end
end
