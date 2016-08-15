require 'sqlite3'

ws = SQLite3::Database.new("grocery_list.db")
ws.results_as_hash = true

create_grocery_list = <<-SQL
CREATE TABLE IF NOT EXISTS grocery_list(
	id INTEGER PRIMARY KEY,
	item VARCHAR(255),
	quantity INT,
	price INT,
	refrigerated BOOLEAN
	)
SQL

ws.execute(create_grocery_list)

def create_spending(ws, item, quanity, price, refrigerated)
	ws.execute("INSERT INTO grocery_list (item, quantity, price, refrigerated) VALUES (?, ?, ?, ?)", [item, quantity, price, refrigerated])
end

Loop do

puts "What do you need to buy?"
item = gets.chomp

puts "How many do you need to buy?"
quantity = gets.chomp.to_i

puts "How much does each cost?"
price = gets.chomp.to_i

puts "Does this need to be refrigerated? (Y/N)?"
answer = gets.chomp
refrigerated = answer == "Y"

create_spending(ws, item, quantity, price, refrigerated)

puts "Add another item? Type 'Done' to exit"
add = gets.chomp
break if add == 'Done'

end
