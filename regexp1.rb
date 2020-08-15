str = "August 14 19:22:15 myubuntu bad_process[12345]: ERROR Performing package upgrade"

regex = /\[(\d+)\]/
results = regex.match(str)
puts results.captures

