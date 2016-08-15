def greeting 
	puts "Hello, how are you?"
	yield
	puts "Cool!"
end

greeting {puts "How's your day?"}

#
#
#Release 1:
#
#

array1 = [1, 2, 3, 4, 5]
hash1 = {bedroom: "floor 1", kitchen: "floor 0", observatory: "floor 2", dungeon: "floor -1"}

p array1
p hash1

array1.each do |number|
	puts "My favorite number is #{number}."
end

array1.map! do |number|
	number.next
end
p array1

hash1.each do |room, floor|
	puts "It's in the #{room} on #{floor}"
end


#
#
# Release 2
#
#

array2 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
array2.delete_if {|number| number > 9}
p array2

array2.keep_if {|number| number > 3}
p array2

test = array2.sample(3)
p test

test2 = array2.take_while {|number| number < 8}
p test2

hash2 = {bedroom: 1, kitchen: 0, observatory: 2, attic: 3}

hash2.delete_if {|room, floor| floor > 2}
p hash2

hash2.keep_if {|room, floor| floor >= 1}
p hash2

p hash2.select {|room, floor| floor > 1}

p hash2.rehash