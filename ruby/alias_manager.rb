# Create method to provide alias per release 0

# pseudocode 
# for each name 
# 	use the .tr method to transform vowels
# 	use the .tr method to transform consonants 
# Then swap the first and last name into new printed alias 

def alias_manager(first_name, last_name)
	first_name = first_name.chomp.downcase
	alias_last = first_name.tr('aeiou', 'eioua')
	alias_last = alias_last.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyz')
	last_name = last_name.chomp.downcase
	alias_first = last_name.tr('aeiou', 'eioua')
	alias_first = alias_first.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyz')
	new_alias = alias_first.capitalize + " " + alias_last.capitalize
	p new_alias
end


# Interface Program for Release 1 
def alias_manager_interface
agent_count = 0
agent_hash = {}
agent_first = nil
puts "

Welcome to the Alias Manager."
until agent_first == "quit" 
puts "Agents Processed: #{agent_count}
"
puts "Please enter the agent's first name"
agent_first = gets.chomp.downcase 
	if agent_first != "quit"
		puts "And the last name."
		agent_last = gets.chomp.downcase
		agent_fullname = agent_first.capitalize + " " + agent_last.capitalize
		puts "Thank you. The agent's new alias is:"
		agent_alias = alias_manager(agent_first, agent_last)
		# and this is just to break up sessions visually for ux 
		puts "
		"
		agent_hash[agent_fullname] = agent_alias
	
		agent_count = agent_count + 1 
	else 
		#add visual break for ux
		puts "Thank you for using Alias Manager. 
		"
		agent_hash.each {|key, value| 
		puts "#{key} is #{value}" } 
		puts "
		Goodbye!"
	end 
end 
end 

alias_manager_interface
