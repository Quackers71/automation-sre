# Key: Value - pair

x = {}
x.class

file_counts = {"jpg"=> 10, "txt"=> 14, "csv"=> 2, "rb"=> 23}
puts file_counts

file_counts["txt"]

# iterating hashes
file_counts.each do |key, value|
    puts "There are " + value.to_s + " files with the ." + key + " extension"
end

# Or the one line version is:
file_counts.each { |key, value| puts "There are " + value.to_s + " files with the ." + key + " extension" }

# creating a new key value pair
file_counts["gif"] = 88
file_counts.each { |key, value| puts "There are " + value.to_s + " files with the ." + key + " extension" }

# overiding a key value pair
puts file_counts["rb"]

file_counts["rb"] = 1
puts file_counts["rb"]

# The keys inside of a hash must be unique
# as duplicate keys will point to the same value

# using the delete method
file_counts.delete("rb")
puts file_counts

file_counts.keys

file_counts.values

