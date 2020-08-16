require "csv"

people = CSV.read("test.txt")
puts people.inspect

perl = people.find { |person| person[0] =~ /^Perl/ }
puts perl.inspect
