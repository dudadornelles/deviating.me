require 'sinatra'
require 'slim'
require 'sass'

require File.join(settings.root, "app/posts")
require File.join(settings.root, "app/post")

ROOT_FOLDER = settings.root
set :port, 80

class DeviatingMe < Sinatra::Base

  before do
    @posts = Posts.all.reverse.select(&:live)
  end
    
  get '/:filename.css' do |filename| 
    sass "sass/#{filename}".to_sym
  end

  get '/' do
    slim :index
  end

  get '/posts/:permalink' do |permalink|
    @post = Posts.find_by_permalink(permalink)
    slim :post
  end

end

