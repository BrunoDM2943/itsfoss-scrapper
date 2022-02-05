require 'open-uri'
require('nokogiri')

html = open("https://itsfoss.com/")
doc = Nokogiri::HTML(html)
split = '------------------------------------------------------------'
puts doc.title()
puts split
news = doc.css('h4.ugb-blog-posts__title')
news.each { |el| 
    puts "#{el.text} - #{el.css('a')[0]['href']}"
    puts split
}