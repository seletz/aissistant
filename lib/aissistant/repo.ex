defmodule Aissistant.Repo do
  use Ecto.Repo,
    otp_app: :aissistant,
    adapter: Ecto.Adapters.Postgres
end
