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
