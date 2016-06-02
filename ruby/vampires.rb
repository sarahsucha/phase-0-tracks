puts "How many employees would you like to process?"
numEmployees = gets.chomp
numEmployees = numEmployees.to_i
i = 0
while i < numEmployees

  puts "What is your name?"
  name = gets.chomp

  puts "What is your age?"
  age = gets.chomp
  age = age.to_i

  puts "In what year were you born? (yyyy)"
  birthYear = gets.chomp
  birthYear = birthYear.to_i
  currentYear = 2016
  if age = (currentYear - birthYear)
    isCorrectAge = true
  elsif age = currentYear - (birthYear -1)
    isCorrectAge = true
  else
    isCorrectAge = false
  end

  puts "Our cafeteria serves garlic bread... may we order some for you? (y/n)"
  garlicTolerant = gets.chomp
  if garlicTolerant == "y"
    isGarlicTolerant = true
  else
    isGarlicTolerant = false
  end

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  insurance = gets.chomp
  if insurance == "y"
    insurance = true
  else
    insurance = false
  end

  alergy = ""
  until alergy == "done"
    puts "List an alergy: (type 'done' when finished)"
    alergy = gets.chomp
    if alergy == "sunshine"
      break
    end
  end

    case
    when name == "Drake Cula" || name == "Tu Fang"
      puts "Definitely a vampire."
    when !isCorrectAge && !isGarlicTolerant && !insurance
      puts "Almost certainly a vampire."
    when (!isCorrectAge && (!isGarlicTolerant || !insurance)) || alergy == "sunshine"
      puts "Probaby a vampire."
    when isCorrectAge && (isGarlicTolerant || insurance)
      puts "Probably not a vampire."
    else
      puts "Results inconslusive."
    end #end case

  i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
