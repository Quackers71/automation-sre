s = "You say tomato, I say tomahto"
puts s.sub(/tomah?to/, "banana")
puts s.gsub(/tomah?to/, "banana")

"Ruby".scan(/./) do |letter|
    puts letter
end

octects = "192.168.1.1".split(/\./)
octects.each { |octect| puts octect }
