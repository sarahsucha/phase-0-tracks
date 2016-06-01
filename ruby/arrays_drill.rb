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
