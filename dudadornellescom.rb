require 'sinatra'
require 'slim'
require 'sass'
require File.join(settings.root, "app/posts")

ROOT_FOLDER = settings.root
set :port, 80

class DudaDornellesCom < Sinatra::Base

  get '/:filename.css' do |filename| 
    sass "sass/#{filename}".to_sym
  end

  get '/' do
    @posts = Posts.last 5
    slim :index
  end

end
