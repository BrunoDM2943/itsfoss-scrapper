require 'open-uri'
require('nokogiri')

html = open("https://itsfoss.com/")
doc = Nokogiri::HTML(html)
news = doc.css('h4.ugb-blog-posts__title')
news.each { |el| 
    puts "#{el.text} - #{el.css('a')[0]['href']}"
}