puts "Welcome to Adopt a Hamster!
What would you like to name your little fella?"
name = gets.chomp
name = name.capitalize
puts "How loud is #{name} from 1-10 (Whole Numbers Please!)?"
volume = gets.chomp
volume = volume.to_f
volume = volume.round
puts "What color is #{name}'s fur? (Unless its fur-less)"
color = gets.chomp
color = color.capitalize
puts "In your opinion, would you consider #{name} to be a good candidate for adoption?(Y/N)"
adoption = gets.chomp
adoption = adoption.downcase
if adoption = "no" || "n" || "false"
  puts "Why isn't #{name} a good candidate?"
  response = gets.chomp
end
adoption = adoption.capitalize
puts "How old is #{name}?"
age = gets.chomp.to_i
if age == " "
  age = nil
end

puts "Thank you! Here is #{name}'s Information!
Summary:
Name: #{name}
Volume: #{volume}
Fur Color: #{color}
Suitable for Adoption: #{adoption}
Age: #{age}"