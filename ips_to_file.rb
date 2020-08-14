def write_to_file(active_ips)
    File.open("active_ips.txt", "w") do |file|
        active_ips.each do |ip_address|
            file.puts ip_address
        end
    end
end
