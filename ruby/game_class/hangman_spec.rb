
require_relative 'hangman'

describe Hangman do 
	let(:hangman) {Hangman.new("woof")}
	let(:win) {false}
	let(:dash_word) {['-','-','-','-']}
	
	it "replaces dash with guessed letter" do
		expect(hangman.guesser("w")).to eq("w - - -") 
		#a test that for some reason doesn't pass. 
		#It either doesn't like delete_at or join, saying they're being called on NilClass
	end

	it "takes a word and changes it to dashes" do
		expect(hangman.check_word).to eq ['-','-','-','-']
	end

	it "checks to see if guess word is the same as given word" do
		expect(hangman.if_same("w o o f")).to be true
	end
end


