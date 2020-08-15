puts "monday".capitalize

puts "MONDAY".downcase

puts "Monday".reverse

puts "This string is 33 characters long".length

puts "The number of times e occurs in this string is : ".count("e")

input = gets
input.length
input.dump

chomped_input = input.chomp
puts chomped_input
puts chomped_input.length
puts chomped_input.dump

str = "Hello World!"
puts str
chomped_str = str.chomp("World!")
puts chomped_str

str2 = "     Yo Yo Sicko!           "
puts str2
puts str2.chop
puts str2.strip
