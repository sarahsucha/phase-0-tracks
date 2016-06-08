# https://repl.it/CZrB/1

#write a method that takes the first and last name and creates alias
def makeAlias(name)
  # lowercase name so that it will be easy to work with
  #name.downcase
  # swap first and last name as an array and then paste back together again into a string
  swapName = name.downcase.split(' ').reverse!.join(' ')
  # get length of string so that can parse through each letter
  nameLength = swapName.length
  #define consontants and vowels strings
  consonants= 'bcdfghjklmnpqrstvwxyz'.split('')
  vowels = 'aeiou'.split('')
  aliasName = ""
  # define where to start in the make alias process (at index 0)
  counter = 0
  while counter < swapName.length
    case
    # if a space, remains a space
    when swapName[counter] == ' '
      newLetter = ' '
    #if letter is found in consonants, push to next letter in consonants string
    when consonants.include?(swapName[counter]) == true
      newLetter = consonants[(consonants.index(swapName[counter]) +1) % 21]
    #if letter is found in vowels, push to next letter in vowels string
    when vowels.include?(swapName[counter]) == true
      newLetter = vowels[(vowels.index(swapName[counter])+1) % 5]
    end
    aliasName += newLetter
    counter += 1
  end
  return alaisName = aliasName.split.map(&:capitalize).join(' ')
end

# User Interface
# user can put in as many names as wish to make aliases for
addNames = ''
# set up a hash in which to save requested names and thier aliases
aliasList = {}
until addNames == 'quit'
  puts "Write a name to create an alias: (when finished, enter 'quit')"
  aliasRequest = gets.chomp
  if aliasRequest == 'quit'
    # print out entered names with respective alias names
    addNames = 'quit'
  else
    # save names entered into a hash with requested name as key and alias name as value
    aliasList[aliasRequest] = makeAlias(aliasRequest)
  end
end
# print out all requested names and their aliases
aliasList.each do |originalName, aliasName|
  puts "The alias for #{originalName} is #{aliasName}."
end
