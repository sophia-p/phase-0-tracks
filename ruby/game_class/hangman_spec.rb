require_relative 'hangman'

describe Hangman do 
	let(:hangman) {Hangman.new}
	it "takes a word and changes it to dashes" do
		expect(hangman.initialize("woof")).to eq "- - - - "
	end
end