defmodule HousyWeb.AddressView do
  use HousyWeb, :view
  alias HousyWeb.AddressView

  def render("index.json", %{addresses: addresses}) do
    %{data: render_many(addresses, AddressView, "address.json")}
  end

  def render("show.json", %{address: address}) do
    %{data: render_one(address, AddressView, "address.json")}
  end

  def render("address.json", %{address: address}) do
    %{id: address.id,
      street: address.street,
      municipality: address.municipality,
      state: address.state,
      postal_code: address.postal_code}
  end
end
