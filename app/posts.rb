class Posts
  class << self
    def all
      posts
    end

    def last n
      posts.reverse[0..n]
    end

    private
    def posts
      @posts ||= init_posts
    end

    def init_posts
      Dir[File.join(ROOT_FOLDER, "views/posts/**")].inject([]) do |posts, post|
        posts << post.scan(/\/(posts\/.*?)\.slim/)
      end.flatten
    end
  end
end
