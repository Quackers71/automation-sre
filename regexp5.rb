puts /R.*y/.match("Ruby", 1)

m = /Ruby/.match("Scripting with Ruby!")
puts m.string
m.regexp
puts m.to_s

puts m.pre_match
puts m.post_match

/Ruby/.match("Scripting with Ruby!") do |m|
    puts m.to_s
end

/Emerald/.match("Scripting with Ruby!") do |m|
    puts m.to_s
end

p = /(abc).*(123).*/i.match("abcdefg1234567")
p.regexp
puts p.captures.inspect
puts m[0]
puts m[1]
puts m[2]
