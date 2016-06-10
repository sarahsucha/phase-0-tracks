# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # Add data structure
  # Split up string
  # Add key value pair for hash to assign       #quantity
  # print the list to the console [can you use one of your other methods here?]
# output: {hash}

def grocery_list(items)
  groceries = {}
  grocery_array = items.split(' ')
  grocery_array.each do |items|
    groceries[items] = 20
  end
  p groceries
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: Ask user what they'd like to add
# Create method that takes in a new string to existing grocery list 'groceries'
# output: {hash}

def add_to_list(new_item, quantity = 20, list_hash) #if I'm a quantity, give me that quantity, if no quantity given, assign 20
  list_hash[new_item] = quantity
  p list_hash
end



# Method to remove an item from the list
# input: item name and list of items
# steps: idenitify item from hash and remove it
# output: {new hash}

def remove_item(item, list_hash)
  list_hash.delete(item)
  p list_hash
end

# Method to update the quantity of an item
# input: Include item name, quantity and list of items
# steps: identify item from hash, then update qty key
# output: {new hash}

def update_qty(item, qty, list_hash)
  list_hash[item] = qty
  p list_hash
end

# Method to print a list and make it look pretty
# input: {list_hash}
# steps: print each item/qty pair
# output: "string"

def pretty_list(new_list_hash)
  new_list_hash.each do |grocery_item, qty|
    puts "Grocery item: #{grocery_item}, qty: #{qty}"
  end
end



#Driver Code
steves_list = grocery_list(" ")

steves_list = add_to_list('Lemonade', 2, steves_list)
steves_list = add_to_list('Tomatoes', 3, steves_list)
steves_list = add_to_list('Onions', 1, steves_list)
steves_list = add_to_list('Ice Cream', 4, steves_list)
steves_list = remove_item("Lemonade", steves_list)
steves_list = update_qty("Ice Cream", 1, steves_list)
p pretty_list(steves_list)
grocery_list("carrots apples cereal pizza")
list = grocery_list("carrots apples cereal pizza")
new_list = add_to_list("bannanas", list)
remove_item("cereal", new_list)
new_list = remove_item("cereal", new_list)
update_qty("pizza", 30, new_list)
new_list = update_qty("pizza", 30, new_list)
pretty_list(new_list)

# What did you learn about pseudocode from working on this challenge?
  # It can be useful to break up into expected inputs and outputs
  # I am also trying to avoid defining the Ruby method too early on in the pseudocode and keep it in as plain English as possible. I don't know that we accomplished that very well in this exercise, but in general I would like to move in that direction.
# What are the tradeoffs of using arrays and hashes for this challenge?
  # I guess we never really thought about using an array for this challenge. I suppose if we used an array of hash pairs it also could have worked well - then each hash pair would have had an index. If we would have used an array with hash pairs we may have- MAY HAVE because I'm really not sure - been able to create a method that takes in several new items at once and assigns them a default quantity if no quantity is given and adds them to the list...
# What does a method return?
  # A method returns whatever the last line of code returns. So in our case, our methods mostly returned hashes because that was the last item which was manipulated in the method (or in the last method's case it returned a string as that was the last data type manipulated in the method)
# What kind of things can you pass into methods as arguments?
  # You can pass any object into a method as an arguemtn, including, as we have learned in this exercise other methods.
# How can you pass information between methods?
  # Not very easily. We ended up having to keep re-assigning the grocery list variable to pass one method into the other method but while still keeping the latest information.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  # It became very clear that scope is very narrow in Ruby unless we jump through a lot of hoops to remediate it. Which I hear in the long run is better. But it did make my life miserable for about 10 minutes.
  # I also realized how using a class for the grocery list would have made things easier.
