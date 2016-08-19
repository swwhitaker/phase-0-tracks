## Pseudocode for a new class design
# create class: book
# set attributes: Genre, length (in chapters), protagonist name, antagonist name
# apply attr_accessor/reader as needed
# Create an initialize process
# Create a protagonist status generator method (i.e. doing well, in trouble) taking arguments and turning them into attributes
	#make this update an array of statuses
# Create a next chapter method in which the protagonist status randomly updates for each chapter
	#apply condition that protagonist and antagonist never have the same status
	#print chapter name and character statuses until chapter length is achieved so user can see outline of story
# Create a method to randomly select from three given celebrities (as arguments) who writes the foreward
