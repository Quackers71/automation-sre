puts /yelling/i =~ "I'm not YELLING!"
puts /yelling/ =~ "I'm not YELLING!"

puts /.ig/ =~ "wig"
puts /.ig/i =~ "Piggy"

puts /.ickle$/i =~ "triCKle"
puts /.ickle$/i =~ "tickle"
puts /.ickle$/i =~ "TRICKLE"
puts /.ickle$/i =~ "tricycle"
puts /.ickle$/i =~ "trickles"

