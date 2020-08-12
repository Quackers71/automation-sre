require "net/http"

puts Net::HTTP.get("www.google.co.uk", "/") > goog.txt