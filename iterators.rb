5.times do
    puts "Yo Yo Sicko!"
end

1.upto(5) { |number| puts number}

5.downto(1) { |number| puts number}

'a'.upto('f') { |letter| puts letter }


# Iterator Methods
# |optional| args

5.times do |iteration|
    puts "We're on loop number #{iteration} now."
end


# an empty array
x = []
x.push("Kittens")
x.push("are")
x.push("cute")
puts x

x.pop
puts x


nums = [5, 3, 4, 1, 2]
nums.sort
puts nums

lets = ["b", "a", "c", "d"]
lets.sort
puts lets

lets.length

lets[lets.length - 1]
lets.last
