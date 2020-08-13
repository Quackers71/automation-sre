# File.rename("first_draft.txt", "finished_masterpiece.txt")

File.size("birthday_song.txt")

File.mtime("birthday_song.txt")

if File.exists?("./Yo/Yo-test1")
    puts "Phew, the file is there!"
end

puts File.expand_path("./Yo/Yo2/Yo-test5")

puts File.basename("./Yo/Yo-test2", "*")

puts File.dirname("/Yo/Yo2/Yo-test4")