require "open3"

stdout, stderr, status = Open3.capture3("ls", "-l")
puts stdout
puts stderr
puts status.success?