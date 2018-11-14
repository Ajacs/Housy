defmodule Housy.Repo do
  use Ecto.Repo,
    otp_app: :housy,
    adapter: Ecto.Adapters.Postgres
end
