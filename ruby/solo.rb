## Pseudocode for a new class design
# create class: book
# set attributes: Genre, length (in chapters), protagonist name, antagonist name
# apply attr_accessor/reader as needed
# Create an initialize process
# Include a protagonist status generator in the init (i.e. doing well, in trouble)
	#print chapter name and character statuses until chapter length is achieved so user can see outline of story
# Create genre updator method
# Create a method to randomly select from three given celebrities (as arguments) who writes the foreward


def Book
attr_accessor :antagonist_name, :protagist_name, :length, :genre

	class Book
attr_accessor :antagonist_name, :protagist_name, :length, :bookname 
attr_reader :genre, :outcome 

	def initialize
		puts "What is the name of your book?"
		bookname = gets.chomp 
		bookname = bookname.capitalize
		puts "What genre is it?"
		genre = gets.chomp 
		puts "How many chapters is it?"
		length = gets.to_i 
		puts "What is your protagonist's name?"
			protagonist_name = gets.chomp
			protagonist_name = protagonist_name.capitalize
		puts "What is your antagonist's name?"
			antagonist_name = gets.chomp 
			antagonist_name = antagonist_name.capitalize
		puts "Enter three statuses one at a time; one positive, one neutral, and onenegative (e.g. 'happy, aight,sad')"
			status1 = gets.downcase 
			status2 = gets.downcase
			status3 = gets.downcase  
			
			#Story Arc Creator Feature	
			counter = 0 
			until counter == length 
			status_number = rand(3)
				if status_number == 0
					protagonist_status = status1
					antagonist_status = status3
				elsif status_number == 1
					protagonist_status = status2
					antagonist_status = status2
				elsif status_number == 2
					protagonist_status = status3
					antagonist_status = status1 
				end
				puts "#{bookname} Chapter #{counter}: #{protagonist_name} is #{protagonist_status}, and #{antagonist_name} is #{antagonist_status}."
				counter = counter + 1 
			end
			
			puts "The End"
			
			if protagonist_status == status1
				outcome = "good" 
				puts "Who doesn't like a happy ending!"
			elsif protagonist_status == status2
				outcome = "ambiguous"
				puts "Oooh, ambiguous ending. Sequel?"
			else 
				outcome = "bad"
				puts "Dark ending. Interesting choice!"
			end 
			
	@bookname = bookname 
	@genre = genre
	@length = length
	@protagist_name = protagonist_name
	@antagonist_name = antagonist_name
	@outcome = outcome 
	end 
	
	def update_genre(new_genre)
		@genre = new_genre
	end 
	
	def foreward_by(celebrity1, celebrity2, celebrity3)
		which_one = rand(3)
		if which_one = 0 
			puts "#{celebrity1} agreed to write the foreward"
		elsif which_one = 1 
			puts "#{celebrity2} agreed to write the foreward"
		else puts "#{celebrity3} agreed to write the foreward"
		end 
	end 
	
end 

puts "Hello! Welcome to the generic book creator! How many books would you like to write today?"
num_books = gets.to_i 
books = []
book_counter = 0
	until book_counter == num_books
		books << Book.new
		book_counter = book_counter + 1 
	end 
p books  

