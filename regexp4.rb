puts /p*ickle/ =~ "pickle"
puts /p*ickle/ =~ "pppppickle"
puts /p*ickle/ =~ "ickle"

puts /p+ickle/ =~ "pickle"
puts /p+ickle/ =~ "pppppickle"
puts /p+ickle/ =~ "ickle"

puts /^A.*a$/ =~ "Albania"
puts /^A.*a$/ =~ "Argentina"
puts /^A.*a$/ =~ "Afghanistan"

puts /^A.*a$/ =~ "Aa"

# Escape character
puts /\$/ =~ "$10.00"
#     ^

puts /\// =~ "forward/slash"
# or
%r{/} =~ "forward/slash"
