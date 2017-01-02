class Hangman
	attr_accessor :given_word, :guess_letter, :guess_counter
	attr_reader :dash_word, :guessing_word
	def initialize(given_word)
		@given_word = given_word
		@guess_counter = given_word.length - 1
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

	def end_game(word)
		win = true
		if @guessing_word.include? "-" == false
			word = word.gsub(/\s+/, "")
		end
		
	end

end


#user interface

puts "Hello, User One, please type a word for User Two to guess."
game = Hangman.new(gets.chomp)

 
puts "Hello, User Two, your word is #{game.check_word.join(' ')}. Given word is #{game.given_word}"
repeat_guesses = []
while game.guess_counter > 0
	puts "Guess a letter"
	guess = game.guesser(gets.chomp)
	puts "#{guess}. You have #{game.guess_counter} guesses left."
	if repeat_guesses.include? guess
	puts "Now for a different letter!"
	else
	game.guess_counter -=1
	repeat_guesses.push(guess)
	end
		
	case
	when game.end_game(guess)
		puts "#{game.guessing_word}You have won with #{game.guess_counter} guesses to spare!"
		break
	when word1 != word2&& game.guess_counter == 0
		puts "No more guesses left! The word was #{game.given_word}"
		break

	end
	
end




