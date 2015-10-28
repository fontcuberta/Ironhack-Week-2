require './keypress.rb'
require 'colorize'
system "clear"
class Blog

  attr_reader :page

  def initialize
    @all_posts = []
    @current_page = 1
    @total_pages = 1
    @post_per_page = 3
  end

  def add_post post
    @all_posts << post

    @total_pages = (@all_posts.length / @post_per_page.to_f).ceil

  end

  def publish_front_page
    first_post = (@current_page * @post_per_page) - @post_per_page
    last_post = @current_page * @post_per_page

    @all_posts[first_post...last_post].each do |post|

      if post.sponsor
        puts "******#{post.title}******\n#{post.date}\n#{post.text}", "----------------"
      else
        puts "#{post.title}\n#{post.date}\n#{post.text}", "----------------"
      end

    end

    puts "================="

    @total_pages.times do |page|

      if page+1 == @current_page
        print " #{page + 1} ".colorize(:red)
      else
        print " #{page + 1} "
      end

    end

  end

  def go_to_next_page
    system "clear"
    if @current_page < @total_pages
      @current_page += 1
    end

  end

  def go_to_prev_page
    system "clear"
    if @current_page > 1
      @current_page -= 1
    end

  end

end


class Post

  attr_reader :title, :date, :text, :sponsor

  def initialize (title, date, text, sponsor = false )
    @title = title
    @date = date
    @text = text
    @sponsor = sponsor
  end

end


blog = Blog.new
blog.add_post Post.new('Post title 1', '20151127', 'Post 1 text')
blog.add_post Post.new('Post title 2', '20151022', 'Post 2 text', true)
blog.add_post Post.new('Post title 3', '20151121', 'Post 3 text')
blog.add_post Post.new('Post title 4', '20151121', 'Post 4 text')
blog.add_post Post.new('Post title 5', '20151121', 'Post 5 text', true)
blog.add_post Post.new('Post title 6', '20151121', 'Post 6 text')
blog.add_post Post.new('Post title 7', '20151121', 'Post 7 text')
blog.add_post Post.new('Post title 8', '20151121', 'Post 8 text')
blog.add_post Post.new('Post title 1', '20151127', 'Post 1 text')
blog.add_post Post.new('Post title 2', '20151022', 'Post 2 text', true)
blog.add_post Post.new('Post title 3', '20151121', 'Post 3 text')
blog.add_post Post.new('Post title 4', '20151121', 'Post 4 text')
blog.add_post Post.new('Post title 5', '20151121', 'Post 5 text', true)
blog.add_post Post.new('Post title 6', '20151121', 'Post 6 text')
blog.add_post Post.new('Post title 7', '20151121', 'Post 7 text')
blog.add_post Post.new('Post title 8', '20151121', 'Post 8 text')

blog.publish_front_page

keypress = read_char

while keypress != "q"
  case keypress
  when "\e[D"
    blog.go_to_prev_page
    blog.publish_front_page
    keypress = read_char
  when "\e[C"
    blog.go_to_next_page
    blog.publish_front_page
    keypress = read_char
  else
    keypress = read_char
  end
    
end

system "clear"