#Initialize a new hash
client = {}

#prompt user for their name and assign data type string
puts "Client's name?"
client[:name] = gets.chomp.to_s

#prompt user for their age and assign data type integer
puts "Client's age?"
client[:age] = gets.chomp.to_i

#prompt user if they have kids and assign a boolean value
puts "Should we consider children in the design?"
if gets.chomp == "yes"
  client[:children] = true
else
  client[:children] = false
end

#prompt user for decor theme and assign to a string
puts "What would you like your decor theme to be?"
client[:decor] = gets.chomp.to_s

#Print the hash in a readable form

puts "#{client[:name]} who is #{client[:age]} years old,and would like us to decorate their house with #{client[:decor]} theme.\n
Further, it is #{client[:children]} that we should design with children in mind."

#create opportunity for worker to edit input
puts "\nDo you want to change any of the previous entries: name, age, children, or decor? Enter no to finish"
update = gets.chomp.to_sym

if update = "no"
  puts "Final Client data is:
	Name: #{client[:name]}
	Age: #{client[:age]}
	Design with children in mind: #{client[:children]}
	Decor: #{client[:decor]}"
else
  client[update.to_sym] = update
  puts "Final Client data is:
	Name: #{client[:name]}
	Age: #{client[:age]}
	Design with children in mind: #{client[:children]}
	Decor: #{client[:decor]}"
end
