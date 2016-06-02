# RELEASE 0

def fav_animal
  puts "What is my favorite animal... drumroll please."
  yield("red pandas")
end

fav_animal { |animal| puts "This is my favorite animal: #{animal}" }

# RELEASE 1

# define an array and a hash

animals = ["Red Panda", "Unicorn", "Elephant", "Eel", "Tarantula", "Pelican"]

zoo_employees = { aquarium: "John", aviary: "Suzy", safari: "Marcy", bughouse: "Nosferatu", jungle: "George"}

#iterating through each data structure using .each

puts "Original animals before .each method is called:"
p animals

animals.each do |animal|
  puts animal
end

puts "After .each call on animals:"
p animals

#shows that .each does not change the array

puts "Original Zoo Employees before .each method is called:"
p zoo_employees

zoo_employees.each do |job_title, employee|
  puts "#{employee} takes care of the #{job_title} at the zoo."
end

puts "After .each call on Zoo Employees:"
p zoo_employees

#shows that .each does not change the hash

# using the .map method to modify the information in an array

puts "Original animals before .map method is called:"
p animals

animals.map! do |animal|
  p animal.upcase
end

puts "Animals after .map method is called to caps lock:"
p animals

#using .map on Employee hash

puts "Zoo Employees with their jobs in a hash before .map method is called:"
p zoo_employees

cap_jobs = zoo_employees.map do |job_title, employee|
  p job_title.capitalize
end

puts "Employee jobs in an array after .map method is called to capitalize job titles:"
p cap_jobs

# shows that .map method elimates hashes and can only return an array.

# RELEASE 2

# Relase 2.1

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts "Original array of numbers for 2.1:"
p numbers

#iterate through array and delete numbers less than 5
numbers.delete_if {|number| number < 5}

# check to see if numbers print as expected
puts "New array of numbers for 2.1 to delete numbers less than 5:"
p numbers

# Release 2.2
numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts "Original array of numbers for 2.2:"
p numbers2

#iterate through array and keep numbers less than 5
numbers2.keep_if {|number| number < 5}

# check to see if numbers print as expected
puts "New array of numbers for 2.2 to keep numbers less than 5:"
p numbers2

# Release 2.3

numbers_hash = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five"}

puts "Original hash with numbers for 2.3:"
p numbers_hash

# keep items if value string length is greater than 3
numbers_hash.select! { |integer, word| word.length > 3 }

puts "New hash with only numbers whose words are greater than 3 characters long for 2.3:"
p numbers_hash

# Release 2.4
letters = ["a", "b", "c", "d", "e"]

puts "Original letters for 2.4:"
p letters

#remove letters until reaches c, because c != c is false and assigns remaining values to new array
new_letters = letters.drop_while { |letter| letter != "c" }

puts "New letters for 2.4 to remove letters before the letter 'c':"
p new_letters
