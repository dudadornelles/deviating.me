class Post
  attr_accessor :permalink, :name, :date, :live
  
  def initialize params
    @permalink = params[:permalink]
    @name = params[:name]
    @date = params[:date]
    @live = !(params[:live] == false)
  end
end

