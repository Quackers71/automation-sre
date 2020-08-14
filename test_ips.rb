def scan_range(ip_range)
    active_ips = ip_range.select { |ip| Net::Ping::External.new(ip).ping? }
end