use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :valkyrieagency, Valkyrieagency.Endpoint,
  secret_key_base: "Kkcqx/TkzHilGFBQFDjnGTAPRCK+12M598b3oDqJvJnd4rfZwQI12h8l5X4K4+9d"

# Configure your database
config :valkyrieagency, Valkyrieagency.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "valkyrieagency_prod",
  pool_size: 15
