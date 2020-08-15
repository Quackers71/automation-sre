m = /(abc).*(123).*/i.match("abcdefg1234567")
puts m.captures.inspect
m.regexp

n = /Ruby/.match("Scripting with Ruby!")
puts n.string

input = gets
puts input.length
input.dump
chomped_input = input.chomp
puts chomped_input
puts chomped_input.length
puts chomped_input.dump

/\// =~ "forward/slash"