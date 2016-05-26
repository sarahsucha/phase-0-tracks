puts "How many employees would you like to process?"
numEmployees = gets.chomp
numEmployees = numEmployees.to_i
i = 0
while i < numEmployees

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

  puts "List an alergy: (type "done" when finished)"
  alergy = gets.chomp
  if alergy == "sunshine"

  case
  when !name
    puts "Definitely a vampire."
  when birthYear && (garlicTolerant || insurance)
    puts "Probably not a vampire."
  when !birthYear && (garlicTolerant || insurance)
    puts "Probaby a vampire."
  when !birthYear && !garlicTolerant && !insurance
    puts "Almost certainly a vampire."
  else
    puts "Results inconslusive."
  end

i += 1
end
