#ask the user for a variety of information:
#     name (string),
#     email (string),
#     phone number (string),
#     how many years has worked as an interior designer (number),
#     likes Moroccan design (boolean),
#     likes Hungarian design (boolean),
#     likes Otomi Embroidery (boolean),
#     likes modern art (boolean)
# get user input and convert to correct data type
# ask user if happy with input or would like to update

#Setup a user hash
designer = {}

# Prompt User For information
puts "Your Full Name:"
designer[:name] = gets.chomp

puts "Your Email:"
designer[:email] = gets.chomp
#TODO add email validation

puts "Your Phone Number:"
designer[:phone] = gets.chomp
#TODO add phone validation.
#Phone for now is intentionally left as a string, as some users may wish to put an area or country code, example: (505)344-9867, +420 884 993 223

puts "How many years have you worked as an interior designer?"
designer[:yearsExperience] = gets.chomp.to_i

#Method to evaluate boolean values
def makeBoolean (userInput)
  if userInput == "y"
    userInput = true
  else
    userInput = false
  end
end

# Ask user for boolean values
puts "Do you like Moroccan design? (y/n)"
designer[:likesMoroccan] = makeBoolean(gets.chomp)

puts "Do you like Hungarian design? (y/n)"
designer[:likesHungarian] = makeBoolean(gets.chomp)


puts "Do you like Otomi Embroidery? (y/n)"
designer[:likesOtomi] = makeBoolean(gets.chomp)

puts "Do you like Dadaism? (y/n)"
designer[:likesDada] = makeBoolean(gets.chomp)

# Print out inputed data once form is complete
p designer

# Ask user if would like to update information
# Create loop until user writes "done"
editChoice = ""
until editChoice == "done"
  puts "If you are happy with the information entered, write 'done' - otherwise, write in the following to edit: name, phone, yearsExperience, likesMoroccan, likesHungarian, likesOtomi, likesDada"
  editChoice = gets.chomp
  if editChoice == "done"
    puts "Thank you for applying!"
    p designer
  # if user choice is number, get new value and convert to integer"
  elsif editChoice == "yearsExperience"
    editChoice = editChoice.to_sym
    puts "Enter new value:"
    designer[editChoice] = gets.chomp.to_i
    p designer
  # if user choice is boolean, get new value and convert to boolean"
  # TODO find a way to identify all questions that are boolean and not have to hard code each one out in this elsif statement.
  elsif editChoice == "likesMoroccan" || editChoice == "likesHungarian" || editChoice == "likesOtomi" || editChoice == "likesDada"
    editChoice = editChoice.to_sym
    puts "Enter new value (y/n):"
    designer[editChoice] = makeBoolean(gets.chomp)
    p designer
  # All other data that should just be string values
  else
    editChoice = editChoice.to_sym
    puts "Enter new value:"
    designer[editChoice] = gets.chomp
    p designer
  end
end
