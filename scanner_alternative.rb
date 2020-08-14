require "ipaddr"
require "net/ping"

def calculate_network_range(ip, mask)
    address = "#{ip}/#{mask}"
    ip_range = []
    IPAddr.new(address).to_range.each do |ip_object| ip_range.push(ip_object.to_s)
    end
    return ip_range
end
