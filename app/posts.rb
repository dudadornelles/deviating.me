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
          :permalink => 'building-this-blog',
          :live => false
        }, 
        {
          :name => "Five Whys",
          :date => '1/05/2013',
          :permalink => 'five-whys',
          :live => true
        },
        {
          :name => "TPP By Example",
          :date => '27/10/2013',
          :permalink => 'tpp-by-example',
          :live => true
        }
 
      ].inject([]) { |posts, post| posts << Post.new(post) }
    end
  end
end
