x = ["Now", "we", "are", "cooking!"]

x.class
puts x
puts x[0]

puts x[3].class
puts x[4].class


# using String interpolation
excited_array = ["I", "am", "excited"]
excited_array.each do |word|
    puts "#{word}!"
end


animal = "fox"

puts "What does the #{animal} say?"

puts "#{1+1} is two!"
