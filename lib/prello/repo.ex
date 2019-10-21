defmodule Prello.Repo do
  use Ecto.Repo,
    otp_app: :prello,
    adapter: Ecto.Adapters.Postgres
end
