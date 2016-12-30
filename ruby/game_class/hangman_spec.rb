require_relative 'hangman'

describe Hangman do 
	let(:hangman) {Hangman.new}
	it "replaces dash with guessed letter" do
		expect(hangman.guesser("f")).to eq "- - - f"
	end
	it "takes a word and changes it to dashes" do
		expect(hangman.check_word("woof")).to eq "- - - - "
	end
end