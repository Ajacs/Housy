defmodule HousyWeb.PropertyActionControllerTest do
  use HousyWeb.ConnCase

  alias Housy.Properties
  alias Housy.Properties.PropertyAction

  @create_attrs %{
    name: "some name"
  }
  @update_attrs %{
    name: "some updated name"
  }
  @invalid_attrs %{name: nil}

  def fixture(:property_action) do
    {:ok, property_action} = Properties.create_property_action(@create_attrs)
    property_action
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all property_actions", %{conn: conn} do
      conn = get(conn, Routes.property_action_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create property_action" do
    test "renders property_action when data is valid", %{conn: conn} do
      conn = post(conn, Routes.property_action_path(conn, :create), property_action: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.property_action_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.property_action_path(conn, :create), property_action: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update property_action" do
    setup [:create_property_action]

    test "renders property_action when data is valid", %{conn: conn, property_action: %PropertyAction{id: id} = property_action} do
      conn = put(conn, Routes.property_action_path(conn, :update, property_action), property_action: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.property_action_path(conn, :show, id))

      assert %{
               "id" => id,
               "name" => "some updated name"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, property_action: property_action} do
      conn = put(conn, Routes.property_action_path(conn, :update, property_action), property_action: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete property_action" do
    setup [:create_property_action]

    test "deletes chosen property_action", %{conn: conn, property_action: property_action} do
      conn = delete(conn, Routes.property_action_path(conn, :delete, property_action))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.property_action_path(conn, :show, property_action))
      end
    end
  end

  defp create_property_action(_) do
    property_action = fixture(:property_action)
    {:ok, property_action: property_action}
  end
end
