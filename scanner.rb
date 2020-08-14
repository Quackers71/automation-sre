require "ipaddr"
require "net/ping"

def calculate_network_range(ip, mask)
    address = "#{ip}/#{mask}"
    ip_range = IPAddr.new(address).to_range.map { |ip_object| ip_object.to_s }
end

def scan_range(ip_range)
    # filter values with select
    active_ips = ip_range.select { |ip| Net::Ping::External.new(ip).ping? }
end

def write_to_file(active_ips)
    File.open("active_ips.txt", "w+") do |file|
        active_ips.each do |ip_address|
            file.puts ip_address
        end
    end
end

range = calculate_network_range("192.168.1.10", "255.255.255.254")
#puts range

active_ips = scan_range(range)
#puts active_ips

write_to_file(active_ips)
