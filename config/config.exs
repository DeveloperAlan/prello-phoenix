# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :prello,
  ecto_repos: [Prello.Repo]

# Configures the endpoint
config :prello, PrelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8p9hO7N2gfL8pi95q1RGvh4YH8+S21lSvME93b6QlS2clY+MborgCN02vXapTIuj",
  render_errors: [view: PrelloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Prello.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
