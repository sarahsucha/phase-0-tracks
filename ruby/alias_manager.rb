# BUSINESS LOGIC
# write a method that takes the first and last name and creates alias
def makeAlias(name)
  # lowercase name so that it will be easy to work with
  # swap first and last name as an array and then paste back together again into a string
  swapName = name.downcase.split(' ').reverse!.join(' ')
  # get length of string so that can parse through each letter
  nameLength = swapName.length
  #define consontants and vowels strings
  consonants= 'bcdfghjklmnpqrstvwxyz'.split('')
  vowels = 'aeiou'.split('')
  # define where to start in the make alias process (at index 0) with a blank alais name
  aliasName = ""
  counter = 0
  while counter < nameLength
    case
    # if a space, remains a space
    when swapName[counter] == ' '
      newLetter = ' '
    # if letter is found in consonants, push to next letter in consonants string
    when consonants.include?(swapName[counter]) == true
      newLetter = consonants[(consonants.index(swapName[counter]) +1) % 21]
    # if letter is found in vowels, push to next letter in vowels string
    when vowels.include?(swapName[counter]) == true
      newLetter = vowels[(vowels.index(swapName[counter])+1) % 5]
    end
    # add the new letter to the alias name and push the iteration to the next letter
    aliasName += newLetter
    counter += 1
  end
  # return the new name, capitalized
  return alaisName = aliasName.split.map(&:capitalize).join(' ')
end

# USER INTERFACE
# set up a hash in which to save requested names and thier aliases
aliasList = {}
# user can put in as many names as wish to make aliases for
loop do
  puts "Write a name to create an alias: (when finished, enter 'quit')"
  aliasRequest = gets.chomp
  break if aliasRequest == 'quit'
  # save names entered into a hash with requested name as key and alias name as value
  aliasList[aliasRequest] = makeAlias(aliasRequest)
end

# print out all requested names and their aliases
aliasList.each do |originalName, aliasName|
  puts "The alias for #{originalName} is #{aliasName}."
end
