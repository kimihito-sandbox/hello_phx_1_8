defmodule HelloPhx18.Repo do
  use Ecto.Repo,
    otp_app: :hello_phx_1_8,
    adapter: Ecto.Adapters.Postgres
end
