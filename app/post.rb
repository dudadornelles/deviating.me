class Post
  attr_accessor :permalink, :name, :date
  
  def initialize params
    @permalink = params[:permalink]
    @name = params[:name]
    @date = params[:date]
  end
end

