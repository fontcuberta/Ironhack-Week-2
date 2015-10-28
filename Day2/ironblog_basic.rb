class Blog

  def initialize
    @all_posts = []
  end

  def add_post post
    @all_posts << post
  end

  def create_front_page
    
  end

  def publish_front_page

    @all_posts.sort_by do |post|
      puts "#{post.title}\n#{post.date}\n#{post.text}", "----------------"
    end

  end

end


class Post

  attr_reader :title, :date, :text

  def initialize (title, date, text)
    @title = title
    @date = date
    @text = text
  end

end


blog = Blog.new
blog.add_post Post.new('Post title 1', '20151127', 'Post 1 text')
blog.add_post Post.new('Post title 2', '20151022', 'Post 2 text')
blog.add_post Post.new('Post title 3', '20151121', 'Post 3 text')

blog.publish_front_page