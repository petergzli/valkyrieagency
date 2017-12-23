# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :valkyrieagency,
  ecto_repos: [Valkyrieagency.Repo]

# Configures the endpoint
config :valkyrieagency, Valkyrieagency.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iSASsfK3emv67qaGSZcvNFOQHl16fGCD2lt4CTvx9Ylvuttwe6ghUU0B7zEP0EUN",
  render_errors: [view: Valkyrieagency.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Valkyrieagency.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
