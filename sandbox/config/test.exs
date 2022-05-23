import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :sandbox, Sandbox.Repo,
  username: System.get_env("DB_USERNAME") || raise("Database username not found"),
  password: System.get_env("DB_PASSWORD") || raise("Database password not found"),
  hostname: System.get_env("DB_HOST") || raise("Database host not found"),
  database: System.get_env("DB_NAME") || raise("Database name not found"),
  pool: Ecto.Adapters.SQL.Sandbox,
  port: System.get_env("DB_PORT") || raise("Database port not found")

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sandbox, SandboxWeb.Endpoint,
  http: [ip: {0, 0, 0, 0}, port: System.get_env("PORT") || raise("Port not found")],
  secret_key_base: "N+nkRJ92hGQ8K02wXX+P08zIcd4uozUH2SBKZp2xhDSwwKcoJ00H/l76Oee+h+bK",
  server: false

# In test we don't send emails.
config :sandbox, Sandbox.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
