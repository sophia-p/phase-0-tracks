require_relative 'hangman'

describe Hangman do 
	let(:hangman) {Hangman.new("woof")}
	let(:given_word) {"woof"}
	
	# it "replaces dash with guessed letter" do
	# 	expect(hangman.guesser("f")).to eq "- - - f"
	# end

	it "takes a word and changes it to dashes" do
		expect(hangman.check_word).to eq ['-','-','-','-']
	end

	it "checks to see if guess word is the same as given word" do
		expect(hangman.if_same("woof")).to eq true
	end
end