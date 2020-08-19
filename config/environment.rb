require 'bundler'
Bundler.require

require_all 'app'
require 'erb'

set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}