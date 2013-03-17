require 'sinatra'
require 'slim'
require 'sass'

class DudaDornellesCom < Sinatra::Base

  get '/' do
    slim :index
  end

end
