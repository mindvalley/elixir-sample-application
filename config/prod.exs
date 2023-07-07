use Mix.Config

config :real_world, RealWorldWeb.Endpoint,
  load_from_system_env: true,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "https://real-world-example.herokuapp.com/", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  secret_key_base: "YoWQhgL1hh#%FwNFC03%Ud1yG0y^mnFVJUgDg9DBX2FYdeJ02nhDO#AFGUeeTBLA"

config :logger, level: :info

config :real_world, RealWorld.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
