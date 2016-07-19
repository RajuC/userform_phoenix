# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :user_form,
  ecto_repos: [UserForm.Repo]

# Configures the endpoint
config :user_form, UserForm.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kUIU0Nz1lyJl16c+v86ti4g3LZSXKUIG87lEVs0D765ZmkQxYZPIM5lBXm18L2G4",
  render_errors: [view: UserForm.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UserForm.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
