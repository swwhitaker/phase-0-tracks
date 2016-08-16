# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Turn string into array with space delimiter
  # Iterate through array 
    #creating hash input with array item equalling key and setting value equal to one
  # print the list to the console by using print list method defined below
# output: hash: key is item name, value is quantity (initial value nil)
def print_list(list)
  list.each do |item, quant| 
    puts "Item: #{item}, Quantity: #{quant}"
  end
end

def create_list(items)
  list_hash = {}
  list_array = []
  list_array = items.split(' ')
  list_array.each do |item| 
    list_hash[item] = 1
  end 
  print_list(list_hash)
  list_hash
end

list = create_list("eggs milk cheese")

# Method to add an item to a listl
# input: item name and optional quantity
# steps: Append item into hash with optional quantity as value, or default value of 1 if not supplied
# output: Updated hash with value added
def add_item(olist, item, quant=1)
  new_list = {item => quant}
  olist.merge(new_list)
end

list = add_item(list, "bread")
p list

# Method to remove an item from the list
# input: item name
# steps: Delete item key and value from hash
# output: Updated hash without item
def remove_item(olist, item)
  olist.delete(item) 
  olist
end  

list = remove_item(list, "bread")
p list

# Method to update the quantity of an item
# input: item name and new quantity
# steps: Set hash key for item equal to new quantity
# output: Updated hash with updated quantity
def update_quant (olist, item, quant)
  olist[item] = quant
  olist
end

list = update_quant(list, "milk", 2)
p list

# Method to print a list and make it look pretty
# input: list hash
# steps: Iterate through hash keys
  # Print key and value in statement form
# output: Printed hash, no explicit value


print_list(list)