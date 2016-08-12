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
