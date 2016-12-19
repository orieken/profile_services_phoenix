# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :derp_bear_services,
  ecto_repos: [DerpBearServices.Repo]

# Configures the endpoint
config :derp_bear_services, DerpBearServices.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MpvioyKJp6zA/IgrUmpGTnUGiH94CLLeq2sye4TbuxT8xBXfRmWPb/FFOQ+1aW6D",
  render_errors: [view: DerpBearServices.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DerpBearServices.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
