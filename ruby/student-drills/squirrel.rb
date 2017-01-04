# Brrr, it's cold out there! We're going to follow along with one of North America's most common mammals that we see all year round: the squirrel.
#
# Create a Squirrel class that can be initialized with a color and location. There are gray, red, black, and even albino squirrels and they live in locations like the city, state, woods, in town, whatever you feel like.
#
# For instance: one squirrel could be a gray squirrel who lives in the boonies, another instance of a squirrel could be red who lives in Manhattan. Initialize a couple of different squirrels to demonstrate this functionality.
# ----

class Squirrel
	attr_accessor :location
	attr_reader :color
	def initialize(color, location)
		@color = color
		@location = location
		@asleep = "Asleep"
		@hoard_locations = {}
	end

	def wake_up
		@asleep = "Not asleep"
	end

	def sleep
		@asleep = "Asleep"
	end

	def store_food(food_loc, food_num)
		if @hoard_locations.has_key?(food_loc)
			@hoard_locations[food_loc] += food_num
		else
		@hoard_locations[food_loc] = food_num
		end
		p @hoard_locations
	end

	def eat_something
		p wake_up
		eat_it = @hoard_locations.map do |food, num|
			eat_it = food, num
		end
		snack = eat_it.sample
		@snack_food = snack[0]
		snack_num = rand(snack[1])
		p "Eats #{snack_num} #{@snack_food}(s)"
		@hoard_locations[@snack_food] -= snack_num
		p sleep
	end

	def forget
		p "#{@snack_food} has sprouted a new tree!"
		@hoard_locations.reject! {|food, num| food == @snack_food}
		p @hoard_locations
	end
end

squirrel = Squirrel.new("red", "New York")

 squirrel.location = "Boston"
 p squirrel
 p squirrel.wake_up
 p squirrel.sleep
p squirrel
squirrel.store_food("acorns",3)
squirrel.store_food("acorns",5)
squirrel.store_food("walnuts", 9)
squirrel.store_food("chestnuts", 7)
squirrel.store_food("pinenuts", 8)
squirrel.store_food("birdseed", 4)
p squirrel
squirrel.eat_something
p squirrel
squirrel.forget



# Our squirrels might want to find a new home base if too many humans or predators move in, but they can never change their color. Make the color readable from outside the class, and make the location readable and writeable.
# ----

# Contrary to popular belief, squirrels don't hibernate during the winter, they just sleep a lot!
#
# Create two instance methods: `wake_up` and `sleep`. These should update an instance variable in order to let us know if the squirrel is awake or not. Every squirrel should start out asleep when they are initialized.
# ----

# In preparation for winter, squirrels and other small animals hide nuts to get them through the winter. Nuts are hidden in various locations.
#
# Create a `hoard_locations` data structure that will track two things: the location of a particular hoard (e.g. "knot hole" or "barn attic"), and how many nuts are stored there (e.g. 6). The `hoard_locations` should start out empty.
# ----

# During the summer and fall, the squirrel has to hide their nuts. Create a `store_food` instance method that takes a hoard location and a number of nuts, and stores this in the `hoard_locations` data structure. If the hoard location already exists, this method should add to the existing number of nuts there. If the hoard location doesn't exist, it should create a new entry.
# ---

# Every day during the winter, the squirrel will wake up and find one of his nut stores. Squirrels don't have a great memory so the squirrel will just find one of the stores and eat three of the nuts.
#
# Create an instance method called `eat_something` that will wake the squirrel up, choose a hoard location at random, remove a random number of nuts for the squirrel to eat, and then have the squirrel go back to sleep.
# ---

# Squirrels hide their nuts in holes in the ground, but sometimes forget about them. Sad for the squirrel, but these can sprout into trees so yay!
#
# Create an instance method called `forget` that deletes a random hoard location from the squirrel's hoard locations and returns a string telling us that a new tree has sprouted.
# ---
