puts /Ruby/ =~ "The word Ruby is contained in the line of text."
# The word "Ruby" started at this position

pattern = /t?igers/
puts pattern =~ ("tigers")
puts pattern =~ ("ligers")
puts pattern =~ ("bears")

puts /^x/ =~ "xylem"
puts /^x/ =~ "foxes"
puts /z$/ =~ "quiz"
puts /z$/ =~ "zanzibar"

