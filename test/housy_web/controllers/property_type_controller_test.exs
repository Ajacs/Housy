defmodule HousyWeb.PropertyTypeControllerTest do
  use HousyWeb.ConnCase

  alias Housy.Properties
  alias Housy.Properties.PropertyType

  @create_attrs %{
    name: "some name"
  }
  @update_attrs %{
    name: "some updated name"
  }
  @invalid_attrs %{name: nil}

  def fixture(:property_type) do
    {:ok, property_type} = Properties.create_property_type(@create_attrs)
    property_type
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all property_types", %{conn: conn} do
      conn = get(conn, Routes.property_type_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create property_type" do
    test "renders property_type when data is valid", %{conn: conn} do
      conn = post(conn, Routes.property_type_path(conn, :create), property_type: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.property_type_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.property_type_path(conn, :create), property_type: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update property_type" do
    setup [:create_property_type]

    test "renders property_type when data is valid", %{conn: conn, property_type: %PropertyType{id: id} = property_type} do
      conn = put(conn, Routes.property_type_path(conn, :update, property_type), property_type: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.property_type_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some updated name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, property_type: property_type} do
      conn = put(conn, Routes.property_type_path(conn, :update, property_type), property_type: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete property_type" do
    setup [:create_property_type]

    test "deletes chosen property_type", %{conn: conn, property_type: property_type} do
      conn = delete(conn, Routes.property_type_path(conn, :delete, property_type))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.property_type_path(conn, :show, property_type))
      end
    end
  end

  defp create_property_type(_) do
    property_type = fixture(:property_type)
    {:ok, property_type: property_type}
  end
end
