require_relative 'hangman'

describe Hangman do
	let(:hangwoman) { Hangman.new("hello") }

	it "gives secret_word value of 'hello' " do
		expect(hangwoman.secret_word).to eq "hello"
	end

	it "encrypts the user's input into '_' based on length" do
		expect(hangwoman.encrypt).to eq "_ _ _ _ _"
	end

	it "checks guess against secret word and inserts if correct" do
		expect(hangwoman.check_letter("h")).to eq ("h _ _ _ _")
	end

	it "solves the puzzle of 'hello'" do
		hangwoman.check_letter("h")
		hangwoman.check_letter("e")
		hangwoman.check_letter("l")
		hangwoman.check_letter("l")
		hangwoman.check_letter("o")

		expect(hangwoman.game_tracker).to be true
	end


end