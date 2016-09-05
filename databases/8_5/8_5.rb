# Photography Site survey and newsletter signup form
#  (don't forget for review: sqlite> .mode col
# sqlite> .headers on)

# require sqlite3 gem
require 'sqlite3'

# create database for user information with sqlite3
db = SQLite3::Database.new("userlists.db")

# create & run table methods for different mailing lists
# (refactor at least the name/email list generation into loop if time permits)
    # 	master list that will store all inputs 
    create_table_master = <<-SQL
      CREATE TABLE IF NOT EXISTS master(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255),
        age VARCHAR(255),
        collector INT,
        general INT,
        potw INT,
        landscape INT,
        travel INT,
        workshop INT
      )
    SQL
    db.execute(create_table_master)
    
    # 	general newsletter list
    create_table_general = <<-SQL
      CREATE TABLE IF NOT EXISTS general(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255)
      )
    SQL
    db.execute(create_table_general)
    
    # 	print of the week newsletter list
    create_table_potw = <<-SQL
      CREATE TABLE IF NOT EXISTS potw(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255)
      )
    SQL
    db.execute(create_table_potw)
    
    # 	landscape photography newsletter email list
    create_table_landscape = <<-SQL
      CREATE TABLE IF NOT EXISTS landscape(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255)
      )
    SQL
    db.execute(create_table_landscape)
    
    # 	travel photography newsletter list 
    create_table_travel = <<-SQL
      CREATE TABLE IF NOT EXISTS travel(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255)
      )
    SQL
    db.execute(create_table_travel)
    
    # 	photo workshop update list 
    create_table_workshop = <<-SQL
      CREATE TABLE IF NOT EXISTS workshop(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        email VARCHAR(255)
      )
    SQL
    db.execute(create_table_workshop)

# create methods for inputting data
# add name and email to table method 
# (return and refactor into loop as time permits)
# I realize I could use foreign keys to reduce duplication of names and emails, but for now want to use lists discretely.

def add_user_to_general(db, name_val, email_val)
  db.execute("INSERT INTO general (name, email) VALUES (?, ?)", [name_val, email_val])
end 

def add_user_to_potw(db, name_val, email_val)
  db.execute("INSERT INTO potw (name, email) VALUES (?, ?)", [name_val, email_val])
end 

def add_user_to_landscape(db, name_val, email_val)
  db.execute("INSERT INTO landscape (name, email) VALUES (?, ?)", [name_val, email_val])
end 

def add_user_to_travel(db, name_val, email_val)
  db.execute("INSERT INTO travel (name, email) VALUES (?, ?)", [name_val, email_val])
end 

def add_user_to_workshop(db, name_val, email_val)
  db.execute("INSERT INTO workshop (name, email) VALUES (?, ?)", [name_val, email_val])
end 

#driver code 
#initial declarations
name_val = nil
email_val = nil 
age_val = nil
collector_val = 0 
general_val = 0 
potw_val = 0 
landscape_val = 0 
travel_val = 0 
workshop_val = 0 

#edge case input for "yes" instead of "y"
class String
  def initial
    self[0,1]
  end
end


# create user interface asking user for information
  # ask user for name, email, age, whether collect, and which mailing lists to opt into 

puts "Thank you for your interest in Stephen Whitaker Images!
To keep up with any of the fine art photography topics you are interested in and receive a 20 percent discount code good for all purchases this year (including half-off Print of the Week purchases for a total discount of 70 percent!), just complete this two minute survey! (Note, promotional offers other than the print of the week may not be combined with discount, but you are welcome to use whichever code gives you the largest discount at checkout.)"

puts "What is your name?"
name_val = gets.chomp



puts "What is your email address?"
email_val = gets.chomp 

puts "how old are you?"
age_val = gets.chomp

puts "Have you purchased prints from Stephen Whitaker Images before? (y/n)"
collected = gets.chomp.downcase.initial
if collected == "y" 
  collector_val = 1 
  puts "Awesome! Thank you for being a collector!"
else puts "Once you have made your first purchase, you are eligible for further offers"
  collector_val = 0 
end  

puts "Are you interested in receiving a weekly roundup of updates including what Stephen is up to, shooting tips, processing demos, promotions, etc.? (y/n)"
gen_interest = gets.chomp.downcase.initial
if gen_interest == "y"
  general_val = 1
  add_user_to_general(db, name_val, email_val)
else general_val = 0
end 

puts "Each week we announce a 'Print of the Week' that will be half off. We cycle through all our images regularly. Keeping an eye on this promotion could help you collect all your favorite images before long at incredible savings."
puts "would you like to be notified about the Print of the Week? (y/n)"
potw_interest = gets.chomp.downcase.initial
if potw_interest == "y"
  potw_val = 1
  add_user_to_potw(db, name_val, email_val)
else potw_val = 0
end 


puts "Are you interested in receiving landscape photography updates, tips, and processing technique demos?"
landscape_interest = gets.chomp.downcase.initial
if landscape_interest == "y"
  landscape_val = 1 
  add_user_to_landscape(db, name_val, email_val)
else
  landscape_val = 0
end 

puts "Are you interested in receiving monthly travel photography updates, tips, and processing technique demos?"
travel_interest = gets.chomp.downcase.initial
if travel_interest == "y"
  travel_val = 1 
  add_user_to_travel(db, name_val, email_val)
else travel_val = 0
end 

puts "Are you interested in receiving monthly workshop updates, locations, announcements, participant gallery links, and promotions?"
workshop_interest = gets.chomp.downcase.initial
if workshop_interest == "y"
  workshop_val = 1 
  add_user_to_workshop(db, name_val, email_val)
else workshop_val = 0
end 

# add data to master table
db.execute("INSERT INTO master (name, email, age, collector, general, potw, landscape, travel, workshop) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", 
  [name_val, email_val, age_val, collector_val, general_val, potw_val, landscape_val, travel_val, workshop_val])


# provide user with discount promo code upon completion of the survey
puts "Thank you for completing this survey! use the promo code SURVEY20 at checkout before the end of the year"
