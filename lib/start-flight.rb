require 'lotus/model'
Dir["#{ __dir__ }/start-flight/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/start-flight_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/start-flight_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/start-flight_development'
  #    adapter type: :sql, uri: 'mysql://localhost/start-flight_development'
  #
  adapter type: :sql, uri: ENV['START_FLIGHT_DATABASE_URL']

  ##
  # Migrations
  #
  migrations 'db/migrations'
  schema     'db/schema.sql'

  ##
  # Database mapping

  mapping "#{__dir__}/config/mapping"

end.load!
