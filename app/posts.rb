require 'json'

class Posts
  class << self
    def all
      posts
    end

    def last n
      posts.reverse[0..n]
    end

    def find_by_permalink permalink
      posts.find { |e| e.permalink == permalink }
    end

    private
    def posts
      @posts ||= init_posts
    end

    def init_posts
      [
        { 
          :name => 'Building this Blog',
          :date => '17/03/2013',
          :permalink => '17-03-2013-building-this-blog'
        }
      ].inject([]) { |posts, post| posts << Post.new(post) }
    end
  end
end
