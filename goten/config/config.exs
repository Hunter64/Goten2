# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :goten,
  ecto_repos: [Goten.Repo]

# Configures the endpoint
config :goten, GotenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "coNlPp/pud3u2Mt706zGBJFjhd7oaNswu80C+EwLnbky/UJRPr3gj0EdTgR/2fFK",
  render_errors: [view: GotenWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Goten.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "cVUrun4zjPSNCulSsZGSljVjyXIierFP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
