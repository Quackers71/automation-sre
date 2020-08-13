puts Dir.pwd

Dir.chdir("Yo")

puts Dir.pwd

contents = Dir.glob("**/*")
contents.each do |entry|
    puts entry
end
