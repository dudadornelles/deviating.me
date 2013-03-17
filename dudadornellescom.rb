require 'sinatra'
require 'slim'
require 'sass'

set :port, 80

class DudaDornellesCom < Sinatra::Base

  get '/' do
    slim :index
  end

end
