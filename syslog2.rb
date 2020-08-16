infos = Hash.new(0)

File.open("/var/log/syslog").each do |line|
    if line.include?("CRON")
        m = /\((.+)\)$/.match(line)
        info = m[1]
        infos[info] += 1
    end
end

puts infos
