#Release 2

def add_to_array(array, item)
  array << item
end

p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)

def build_array(item1,item2,item3)
  [item1, item2, item3]
end

p build_array(1,"two", nil)

#Release 1

p arr = []
p arr += ["one", 2, false, "hi", nil]
arr.delete_at(2)
p arr
arr.insert(2, "new item")
p arr
arr.shift
p arr
p "This array includes the word 'hi'"
p arr.include?("hi")
arr2 = ["bye", "red", "blue"]
p arr3 = arr + arr2


# Pair: Millie Chan and Sarah Sucha
