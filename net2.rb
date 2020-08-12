require "net/ping"

# Ping the loopback address and print the result
p = Net::Ping::External.new("127.0.0.1")
puts p.ping?
