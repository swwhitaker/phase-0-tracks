
# This is the build_array method that takes parameters and returns arrays.
# (note: We don't actually call this one until the bottom of the file, which is what the instructions said. Not sure if this is necessary)
def build_array(it1, it2, it3)
	new_array = [it1, it2, it3]
	p new_array
end


# This is the add_to_array method that takes an arrays and/or items and returns a single array with the items added.
def add_to_array(var1, *others)
	current_arr = [var1, *others]
	current_arr = current_arr.flatten
	p current_arr
end 

# Tried some calls
add_to_array([], "a")	
add_to_array(["a", "b", "c", 1, 2], 3)
add_to_array("bird", "plane", "superman")
add_to_array([true], false, true)


# Release 1 - explore the docs 	
new_array = []

new_array = new_array + ["blue", "green", "red", "yellow", "white"]
p new_array

new_array.delete_at(2)
p new_array

new_array.insert(2, "gray")
p new_array

new_array.shift
p new_array

if new_array.include?("yellow")
	p "this array includes yellow"
else p "this array does not include yellow"
end

newer_array = ["cat", "dog", "hamster"]

newest_array = new_array + newer_array
p newest_array

# this is, as noted above, where we actually call the build_array with items in parameters
build_array(1,"two", nil)
