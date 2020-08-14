output = `ls -lah`
puts output
puts %x(date)

if $?.success?
    puts "Command Succeeded!"
else
    puts "Command Failed!"
end
