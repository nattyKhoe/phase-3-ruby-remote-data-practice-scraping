# require 'nokogiri'
# require 'open-uri'

# html = open("https://flatironschool.com/")
# # gets the html file and parse it into nodes including the css

# doc = Nokogiri::HTML(html)

# puts doc.css(".heading-primary color-white mb-20 text-shadow animate animate-1s animated fadeInUp").text

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://flatironschool.com/"))
courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  puts course.text.strip
end