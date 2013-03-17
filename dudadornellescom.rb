require 'sinatra'
require 'slim'
require 'sass'
require 'data_mapper'

set :port, 80

DB_URL = {}
DB_URL[:dev] = "sqlite3://#{Dir.pwd}/dev.db"
DB_URL[:prod] = "sqlite3://#{ENV["HOME"]}/prod.db"

DataMapper::setup(:default, DB_URL[ENV["RACK_ENV"].to_sym])

class DudaDornellesCom < Sinatra::Base

  get '/' do
    slim :index
  end

end
