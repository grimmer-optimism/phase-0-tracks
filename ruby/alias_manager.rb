#Swap the first and last name
#Ask user for the name and turn it into an array
#Using the array indexes swap their order

#store real names and aliases
agent_names = {}

#turn name inot lower case array
#reverse the order of the array
#add a space between the first and last names of the array
#convert the array back into a strings
#convert name string into array of single characters for the encoder
loop do

puts "Enter Spy's name or tyupe 'quit' to finish:"
name = gets.chomp

name_ary = name.downcase.split.reverse.insert(1, " ").join('').split(//)

def encrypter(name)
  # literals documentation: http://ruby-doc.org/core-2.1.5/doc/syntax/literals_rdoc.html
  letters = %w[ a e i o u b c d f g h j k l m n p q r s t v w x y z]

  name.map do |char|
    #handle edge cases
    if char == "u"
      char = "a"
    elsif char == "z"
      char = "b"
    elsif letters.include?(char)
        letters.rotate[letters.index(char)]
    else
      char = char #for blank space
    end
  end
end

#call encrypter method
#turns character array back into a string
#convert string to an array with last name in index 0
  spy_name_ary = encrypter(name_ary).join.split

  spy_last_name = spy_name_ary[0].capitalize
  spy_first_name = spy_name_ary[1].capitalize
#convert capitalized name strings into array, put a space between the two, and then create a string
  spy_name = [spy_last_name, spy_first_name].insert(1, " ").join
  agent_names[name] = spy_name #store the resultant data in agent names hash

end
