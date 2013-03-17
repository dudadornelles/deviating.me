require 'sinatra'
require 'slim'
require 'sass'

class DudaDornellesCom < Sinatra::Base
  set :port, 80

  get '/' do
    slim :index
  end

end
