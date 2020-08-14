require "open3"

stdout, stderr, status = Open3.capture3("ls", "-z")
puts stdout
puts stderr
puts status.success?