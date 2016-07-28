# Method to create a list
# input: (argument of method) string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create an empty hash
  # split the string by using white space as delimineter
  # store the new array in a new variable
  # assign each key (items on the grocery list) the value of 1 (value)
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash]

# Method to add an item to a list
# input: item name (key) and -not part of argument optional quantity (value)
# steps: if item quantity is not designated assign default value of 1, because if it was 0 it would not be a part of the list
#
# output: grocery list hash with new key, value pair added

# Method to remove an item from the list
# input: The item to remove, and the hash used "grocery list"
# steps: Use the built in delete method to remove the item from the hash
# output: grocery list hash with the designated item removed

# Method to update the quantity of an item
# input: grocery list hash, the item to update (key), and quantity (value)
# steps: Start with hash and specify the key to be updated and set equal to the quantity
# output: An update to an existing item having a new quantity

# Method to print a list and make it look pretty
# input: each key value pair of grocery list hash
# steps: Iterate over the hash using the each method
# Print each key value pair of the hash
# output: display of the entire hash for the user to read (in lay)
  #Show each item on the grocery list with its quantity adjacent to it


def create_list(items)  # acts like a model
  grocery_list = {}
  items = items.split(' ')

  items.each do |item|
    grocery_list[item] = 1
  end
 p grocery_list  # I changed back to p
end

grocery_list = create_list("carrots apples cereal pizza pizza")  # controller code
# view ==> p


p grocery_list.class

# MVC - model, view, controller
def add_item(item, grocery_list) # optional parameter -- how do you that?
  grocery_list[item] = 1
  grocery_list
end

grocery_list = add_item("bananas", grocery_list)

p grocery_list  # YAYYY

def remove_item(item, grocery_list)
  grocery_list.delete(item)
  grocery_list
end

grocery_list = remove_item("bananas", grocery_list)
p grocery_list

def update_item(item, quantity, grocery_list)
  grocery_list[item] = quantity
  grocery_list
end

p update_item("pizza", 5, grocery_list)

def pretty_print(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

pretty_print(grocery_list)
