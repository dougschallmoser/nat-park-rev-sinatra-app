require 'bundler'
Bundler.require

require_all 'app'

set :database, {adapter: "sqlite3", database: "db/database.sqlite"}