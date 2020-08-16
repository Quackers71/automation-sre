require "nokogiri"
require "open-uri"

html_page = Nokogiri::HTML(open("http://google.co.uk/"))

puts html_page.title
