#Create Hangman Class
#Instance variables guess_count, is_over, total_guesses set to reader b/c they should
#not be modified outside of the class
#Instance variables guessed (array /w past inputs) and secret_word as accessor

#Make an encrypt method to turn each character into an '_'
#Turn the secret word into an array of each character
#Create empty hash to put the 'encrypted' output into
#Create a method that takes each character, turns it into an '_'and inserts into
#the encrypted array
#join the array by spaces for user readiability

#Create a method that takes a letter as an argument checks with the hidden word
#variable to see if there are any matches
#1st check if if the user input has been entered already by using empty guessed
#array that is an instance variable
#If true don't subtract from guess counter and raise error message
#If false add the user input into the guessed array and subtract 1 from guess
#Give incorrect choice message

#Now go through the hidden_word array to see if there are any char matches
#If there is a match, or expression evaluates true add that char at index value

#Create method to keep track of number of guesses or if Player 2 has figured out the word
#Use the arrays to check so if hidden_word equals encrypted game is over b/c encrypted has been changed back into original version
#If that is false then evaluate if guess count equals secret word length
	#If guess count is less than or equal to word length keep going
	#If guess count is greater than secret word length game over
	#Return the final status of @is_over


class Hangman
	attr_reader :guess_count, :is_over; 
	attr_accessor :guessed, :secret_word, :total_guesses;

	def initialize(secret_word)
		@secret_word = secret_word.to_s #User 
		@guessed = [] #Store previous guesses in order to check against
		@guess_count = 0
		@is_over = false
		encrypt
		@total_guesses = @secret_word.to_s.length
	end

	def encrypt
		@hidden_word = @secret_word.split("")
		@encrypted = []
		(0..@hidden_word.length-1).each do 
			@encrypted << '_'
		end
		@encrypted.join(" ") #This is what the user will see
	end

	def check_letter(letter)
		if @hidden_word.include?(letter)
			if @guessed.include?(letter)
				puts "You already guessed #{letter}."
			else
				@guessed << letter
			end
		else
			@guess_count += 1
			puts "#{letter} is incorrect."
		end

		@hidden_word.each_with_index do |char, index|
			@guessed.each do |letter|
				if char == letter
					@encrypted[index] = letter
				end
			end
		end
		@encrypted.join(" ")
	end

	def game_tracker
		if @hidden_word == @encrypted
			puts "You Win, byeeeaaaaahhhhh!"
			@is_over = true
		elsif @hidden_word.length <= @guess_count
			@is_over = true
			puts "I remember the first time I played Hangman..."
		else
			@is_over
		end
	end
end

#User Interface

puts "Now starting poor man's version of Hangman!"
puts "\nPlayer 1 will enter the secret word to be guessed and Player 2 will try to solve the mystery."
puts "\nPlayer 2 will have as many guesses as the length of the secret word."
puts "\nIf you accidently guess the same answer twice you will not be lost a guess."
puts "\nPlayer 1 please enter the secret word"

secret_word = gets.chomp.to_s
hangwoman = Hangman.new(secret_word)

until @is_over == true
	puts "\nPlayer 2 please enter single character guess"
	user_guess = gets.chomp
	puts hangwoman.check_letter(user_guess)
	hangwoman.game_tracker
	puts "You have #{hangwoman.total_guesses - hangwoman.guess_count} guesses left."
end




