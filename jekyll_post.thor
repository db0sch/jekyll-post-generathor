require 'thor'
require "stringex"


class JekyllPost < Thor
  desc 'new', 'creates an empty Jekyll post named TITLE'
  def new(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    folder = '_posts/'
    filename = "#{folder}#{date}-#{title.to_url}.markdown"

    unless Dir.exist?(folder)
      abort("#{folder} directory doesn't exist. Are you sure you are in your Jekyll blog repo?")
    end

    full_date = Time.now.strftime('%Y-%m-%d %H:%M:%S %z')

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "date:   #{full_date}"
      post.puts "categories:"
      post.puts "---"
    end
  end
end
