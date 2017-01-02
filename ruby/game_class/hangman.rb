class Hangman
	attr_accessor :given_word, :guess_letter, :guess_counter
	attr_reader :dash_word, :guessing_word, :win, :word
	def initialize(given_word)
		@given_word = given_word
		@guess_counter = given_word.length - 1
		@win = false
	end

	def guesser(guess_letter)
		@guess_letter = guess_letter
		i = 0
		while i < @given_word.length
			if @given_word[i] == @guess_letter
		  		@guessing_word = @dash_word.delete_at(i)
				@guessing_word = @dash_word.insert(i, @guess_letter).join(' ')
			else
			  @guessing_word = @dash_word.join(' ')
			end
			i +=1
		end
			return @guessing_word
	end

	def check_word
		@dash_word = (@given_word.gsub(/\w/,'- ')).rstrip!.split(' ') #replace each letter of given word with a dash, separated by spaces for readability
	end

	def if_same(word)
		@word = word   
		if @word == @given_word.split('').join(' ') #word is a string separated by spaces for readability
			@win = true
		else
			false
		end
	end	

end


#user interface

# puts "Hello, User One, please type a word for User Two to guess."
# game = Hangman.new(gets.chomp)

 
# puts "Hello, User Two, your word is #{game.check_word.join(' ')}"
# repeat_guesses = []
# while game.guess_counter >= 0
# 	puts "Guess a letter"
# 	letter = gets.chomp
# 		guess = game.guesser(letter)
# 		if repeat_guesses.include? letter
# 		puts "Now for a different letter!"
# 		else
# 		puts "#{guess}. You have #{game.guess_counter} guesses left."
# 		game.guess_counter -=1
# 		repeat_guesses.push(letter)
# 		end
		
# 	case
# 	when game.if_same(guess)
# 		puts "You have won with #{game.guess_counter + 1} guesses to spare!"
# 		break
# 	when !game.if_same(guess) && game.guess_counter < 0
# 		puts "Sorry, the word was #{game.given_word}! It was on the tip of your tongue, wasn't it?"
# 	end
	
# end




