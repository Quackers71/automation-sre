regex = /[Rr]uby/
m1 = regex.match("Ruby")
puts m1.to_s
m2 = regex.match("ruby")
puts m2.to_s

m = /[0-9]/.match("2")
puts m.to_s

n = /[a-z0-9]/.match("q")
puts n.to_s

puts /[a-z0-9]/.match("7").to_s

puts /\d/.match("5").to_s
puts /\d/.match("a").to_s

puts /\d{3}/.match("123").to_s
puts /\d{5}/.match("123456").to_s
