files_to_delete = ["useless_file.txt", "pointless_file.txt", "unnecessary_file.txt"]
files_to_delete.each do |file|
    File.delete(file)
end
