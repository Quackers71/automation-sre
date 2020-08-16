require "nokogiri"
html_page = File.open("noko_webpage.html") { |file| Nokogiri::HTML(file) }

puts html_page
puts html_page.title
puts html_page.search("p")
