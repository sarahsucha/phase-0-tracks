#write a method that takes the first and last name and creates alias
def makeAlias(name)
  # lowercase name so that it will be easy to work with
  #name.downcase
  # swap first and last name as an array and then paste back together again into a string
  swapName = name.downcase.split(' ').reverse!.join(' ')
  p swapName
  # get length of string so that can parse through each letter
  nameLength = swapName.length
  p nameLength
  #define consontants and vowels strings
  consonants= 'bcdfghjklmnpqrstvwxyz'.split('')
  p consonants
  vowelString = 'aeiou'
  aliasName = ""
  # define where to start in the make alias process (at index 0)
  counter = 0
  while counter < nameLength
    #if letter is found in consonants, push to next letter in consonants string
    if consonants.include?(swapName[counter]) == true
      newLetter = consonants[(consonants.index(swapName[counter]) +1) % 21]
    else
      p "hi!"
    end
    aliasName += newLetter
    counter += 1
    #if letter is found in vowels, push to next letter in vowels string
    # if a special character, such as a space, go to next special character
   end
   return aliasName
end

# combine methods to be called

# call method
 p makeAlias("Felicia Torres")
