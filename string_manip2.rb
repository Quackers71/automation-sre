str = "Supercalifragilisticexpialidocious even though the sound of it is somehting quite atrocious"
str.index("even")
puts str[35,4]

puts str

new_str = str.sub("atrocious", "delightful")
puts new_str

# gsub Method

str2 = "It was the best times, it was the worst times."
puts str2
new_str2 = str2.gsub("times", "bananas")
puts new_str2

str3 = "Does this text contain a special string?"
puts str3.include?("ordinary")

message = "[log message] ERROR: 418 - I'm a little Teapot!"
if message.include("ERROR")
    raise "An unexpected error occurred: #{message}"
end

