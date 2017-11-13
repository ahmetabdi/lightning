# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lightning,
  ecto_repos: [Lightning.Repo]

# Configures the endpoint
config :lightning, LightningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TsZwPduRKLvAitGeLVRPUQRn7j4UREA5Y9c5XFwN/LcBe8uI5tAipzKIjW7UmNOF",
  render_errors: [view: LightningWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lightning.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
