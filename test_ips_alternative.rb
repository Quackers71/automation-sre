def scan_range(ip_range)
    active_ips = []
    ip_range.each do |ip_address|
        if Net::Ping::External.new(ip_address).ping?
            active_ips.push(ip_address)
        end
    end
    return active_ips
end
