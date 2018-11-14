defmodule HousyWeb.PropertyActionController do
  use HousyWeb, :controller

  alias Housy.Properties
  alias Housy.Properties.PropertyAction

  action_fallback HousyWeb.FallbackController

  def index(conn, _params) do
    property_actions = Properties.list_property_actions()
    render(conn, "index.json", property_actions: property_actions)
  end

  def create(conn, %{"property_action" => property_action_params}) do
    with {:ok, %PropertyAction{} = property_action} <- Properties.create_property_action(property_action_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.property_action_path(conn, :show, property_action))
      |> render("show.json", property_action: property_action)
    end
  end

  def show(conn, %{"id" => id}) do
    property_action = Properties.get_property_action!(id)
    render(conn, "show.json", property_action: property_action)
  end

  def update(conn, %{"id" => id, "property_action" => property_action_params}) do
    property_action = Properties.get_property_action!(id)

    with {:ok, %PropertyAction{} = property_action} <- Properties.update_property_action(property_action, property_action_params) do
      render(conn, "show.json", property_action: property_action)
    end
  end

  def delete(conn, %{"id" => id}) do
    property_action = Properties.get_property_action!(id)

    with {:ok, %PropertyAction{}} <- Properties.delete_property_action(property_action) do
      send_resp(conn, :no_content, "")
    end
  end
end
