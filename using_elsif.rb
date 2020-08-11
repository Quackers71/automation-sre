puts "Hello, how old are you?"

age = gets.chomp.to_i

if age < 18
 puts "Sorry, you are not old enough to vote yet!"
elsif age >= 18 && age <= 19
 puts "You are a teenage voter!"
else
 puts "Yes, you are old enough to vote!"
end
