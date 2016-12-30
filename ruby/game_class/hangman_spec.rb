require_relative 'hangman'

describe Hangman do 
	let(:hangman) {Hangman.new}
	it "takes a word and changes it to dashes" do
		expect(hangman.check_word("woof")).to eq "- - - - "
	end
end