class Hangman
	attr_accessor :given_word, :guess_letter, :guess_counter
	attr_reader :dash_word
	def initialize(given_word)
		@given_word = given_word
		@guess_counter = given_word.length
	end

	def guesser(guess_letter)
		@guess_letter = guess_letter
		i = 0
		while i < @given_word.length
			if @given_word[i] == @guess_letter
		  		@guessing_word = @dash_word.delete_at(i)
				@guessing_word = @dash_word.insert(i, @guess_letter).join(' ')
			else
			  @guessing_word
			end
			i +=1
		end
			return @guessing_word
	end

	def check_word
		@dash_word = (@given_word.gsub(/\w/,'- ')).rstrip!.split(' ')
	end

end


#user interface

puts "Hello, User One, please type a word for User Two to guess."
game = Hangman.new(gets.chomp)

 
puts "Hello, User Two, your word is #{game.check_word.join(' ')}"
while game.guess_counter > 0
	puts "Guess a letter"
	guess = game.guesser(gets.chomp)
	puts "#{guess}. You have #{game.guess_counter} guesses left."
	game.guess_counter -=1
	case
	when @given_word == @guessing_word 
		puts "You win!"
		break
	end
end




