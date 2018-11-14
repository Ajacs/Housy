defmodule HousyWeb.Router do
  use HousyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HousyWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
   scope "/api", HousyWeb do
     pipe_through :api
     resources "/users", UserController, except: [:new, :edit]
     resources "/property_actions", PropertyActionController, except: [:new, :edit]
     resources "/property_types", PropertyTypeController, except: [:new, :edit]
     resources "/properties", PropertyController, except: [:new, :edit]
     resources "/addresses", AddressController, except: [:new, :edit]
   end
end
