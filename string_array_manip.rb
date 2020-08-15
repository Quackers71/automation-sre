str = "String beans are tasty!"
puts str[0,6]

str[0,6] = "Green"
puts str

str[0,6] = ""
str[0] = "B"
puts str

str[0,0] = "String "
str[16,0] = " very"
puts str

puts str[-1]

puts str[7..10]

puts str[-6..-1]

