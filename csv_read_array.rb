require "csv"

people = CSV.read("test.txt")
puts people.inspect

puts people[0].inspect

puts people[0][2].inspect
