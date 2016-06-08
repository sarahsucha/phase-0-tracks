# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # Add data structure
  # Split up string
  # Add key value pair for hash to assign       #quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]




def grocery_list(items)
  groceries = {}
  grocery_array = items.split(' ')
  grocery_array.each do |items|
    groceries[items] = 20
  end
  p groceries
end

grocery_list("carrots apples cereal pizza")



# char_list = grocery_list("carrots apples cereal pizza")
# add_item("banana", char_list)
# grocery
# grocery_list.split(' ')
# grocery_list.each do |item|
#   groceries[item] = 200
# end

# Method to add an item to a list
# input: item name and optional quantity
# steps: Ask user what they'd like to add
# Create method that takes in a new string to existing grocery list 'groceries'
# output:

def add_to_list(new_item, quantity = 20, list_hash) #if I'm a quantity, give me that quantity, if no quantity given, assign 20
  list_hash[new_item] = quantity
  p list_hash
end

list = grocery_list("carrots apples cereal pizza")
add_to_list("bannanas", list )

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

#Driver Code
