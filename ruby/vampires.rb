puts "What is your name?"
name = gets.chomp
if name == "Drake Cula"
  name = false
elsif name == "Tu Fang"
  name = false
else
  name = true
end

puts "In what year were you born? (yyyy)"
birthYear = gets.chomp
birthYear = birthYear.to_i
if birthYear < 1930
  birthYear = false
elsif birthYear > 2016
  birthYear = false
else
  birthYear = true
end

puts "Our cafeteria serves garlic bread... may we order some for you? (y/n)"
garlicTolerant = gets.chomp
if garlicTolerant == "y"
  garlicTolerant = true
else garlicTolerant == "n"
  garlicTolerant = false
end

puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp
if insurance == "y"
  insurance = true
else  insurance == "n"
  insurance = false
end

case
when !name
  print "Definitely a vampire."
when birthYear && (garlicTolerant || insurance)
  print "Probably not a vampire."
when !birthYear && (garlicTolerant || insurance)
  print "Probaby a vampire."
when !birthYear && !garlicTolerant && !insurance
  print "Almost certainly a vampire."
else
  print "Results inconslusive."
end
