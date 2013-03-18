class Post
  attr_reader :link, :name
  def initialize post_link
    @link = post_link
    @name = post_link.split('/').last.gsub(/\d\d-\d\d-\d\d\d\d-/, "").gsub('-', ' ').capitalize
  end
end

