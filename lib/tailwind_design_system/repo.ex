defmodule TailwindDesignSystem.Repo do
  use Ecto.Repo,
    otp_app: :tailwind_design_system,
    adapter: Ecto.Adapters.Postgres
end
