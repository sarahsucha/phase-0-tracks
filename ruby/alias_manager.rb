# write a method that includes the logic for which letter to replace a letter with
	# IF a vowel, go to next vowel
		# u = a
	# IF a consonant has a vowel after it, skip to next consonant
		# z = b
	# ELSE all consonents go to next consontant
# write a method that takes a name and creates alias
  # lowercase name so that it will be easy to work with
  # swap first and last name
   # parse through each letter
   	# IF a space, remains a space
   	# ELSE use method to replace letter

def find_alias_letter(letter)
	cipher = {'a' => 'e',  'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a', 'z' => 'b'}
	if cipher.has_key?(letter)
      	letter = cipher[letter]
    elsif cipher.has_key?(letter.next)
				letter = letter.next.next
    else
    	letter = letter.next
    end
end

def make_alias(name)
  swap_name = name.downcase.split(' ').reverse!.join(' ')
  alias_name = ""
  swap_name.each_char do |letter|
  	if letter == ' '
  		alias_name += ' '
  	else
  		alias_name += find_alias_letter(letter)
  	end
  end
  return alais_name = alias_name.split.map(&:capitalize).join(' ')
end

# User Interface

# create method for user to put in as many names as wish to make aliases for
# set up a hash in which to save requested names and thier aliases
	# print out entered names with respective alias names
    # save names entered into a hash with requested name as key and alias name as value
# print out all requested names and their aliases

def request_alias()
	alias_list = {}
	loop do
		puts "Write a name to create an alias: (when finished, enter 'quit')"
		alias_request = gets.chomp
		break if alias_request == "quit"
		alias_list[alias_request] = make_alias(alias_request)
	end
	alias_list.each do |original_name, alias_name|
		puts "The alias for #{original_name} is #{alias_name}."
	end
end

# Driver Code
# call user interface
request_alias()
