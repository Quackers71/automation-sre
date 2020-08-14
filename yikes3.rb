# using Redirect STDERR to STDOUT
output = `lazy 2>&1`

puts output
puts "continuing on our merry way..."