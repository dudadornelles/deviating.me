require 'json'

class Posts
  class << self

    TECH="tech"
    CONSULTING="consulting"
    CRAFT="craft"

    def all
      posts
    end

    def last n
      posts.reverse[0..n]
    end

    def find_by_permalink permalink
      posts.find { |e| e.permalink == permalink }
    end

    def last_and_exclude n, post
      all.reject{|p| p == post}.reverse[0..n]
    end

    private
    def posts
      @posts ||= init_posts
    end

    def init_posts
      [
        {
          :name => "Five Whys Advanced",
          :date => '1/05/2013',
          :permalink => 'five-whys',
          :live => true
        },
        {
          :name => "TPP By Example",
          :date => '27/10/2013',
          :permalink => 'tpp-by-example',
          :live => true
        },
        {
          :name => "They see me rollin', they breakin'",
          :date => "10/02/2014",
          :permalink => 'they-see-me-rollin-they-breakin',
          :live => true
        }
      ].inject([]) { |posts, post| posts << Post.new(post) }
    end
  end
end
