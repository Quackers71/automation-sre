require "csv"

CSV.foreach("test.txt") do |line|
    puts line.inspect
end
