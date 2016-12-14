#Release 0 - Explore Blocks

def chicken_wig(str)
	3.times {puts "Why does a chicken wear a wig?"}
	yield
end

def gift_asker
  puts "What's on your wish list?"
  yield("Susie", "Tonka Trunck")
end

gift_asker { |name, gift| puts "#{name} wants a #{gift}"}

#Release 1

#Use .each on an array
snack_bag_snacks = ['raisins', 'popcorn', 'omelettes', 'apples']
  
snack_bag_snacks.each do |snack|
  puts "#{snack} is a good snack! :)"
end

#Use .map on an array
super_snack = snack_bag_snacks.map do |snack|
  "Amazing #{snack}"
end

#Use .map! on an array
snack_bag_snacks.map! do |snack|
  puts snack.upcase!
end

#Use .each on a hash
pet_ownership = {
	"Fiona Buttgump" => "Gerbil",
	"Adam Thumper" => "Rabbit",
	"Greg Egg" => "Beagle",
	"Clara Temple" => "Python"
}

pet_ownership.each do |human, animal|
  p "#{human} owns a #{animal}."
end

#Use .map on a hash
pet_ownership = {
	"Fiona Buttgump" => "Gerbil",
	"Adam Thumper" => "Rabbit",
	"Greg Egg" => "Beagle",
	"Clara Temple" => "Python"
}

loud_pet = pet_ownership.map do |human, animal|
  loud_pet = animal.upcase
end

loud_human = pet_ownership.map do |human, animal|
  loud_human = human.upcase
end

p loud_pet
p loud_human

#Release 2

#1
#Array - A code for weeding out bad restaurants.
restaurant_grades= ["A","B","C","C"]

restaurant_grades.delete_if {|grade| grade == "C" } 

#Hash - A code for selecting dogs with longwinded names.
 dogs = {
  "Golden Retriever"=> "Goldy",
  "Scottish Terrier" => "Angus",
  "Corgi" => "Hubert",
  "Labrador" => "Humberdinck" 
}

dogs
dogs.delete_if {|breed, name| name.length == 5} 



#2 
#Array - A code for sorting scenic cruises.
drive_lengths = [255, 3000, 500, 115, 5, 7]
drive_lengths.keep_if { |driving| driving > 50} 

#Hash - A code for selecting specific students based on age.
student_ages = {
  "Henry" => 34,
  "Fifi" => 12,
  "Niles" => 21,
  "Nigel" => 23,
  "Margaret" => 25,
  "Elizabeth" => 28
}

student_ages.keep_if {|name, age| age >=21}

#3 
#Array - A code that selects the houses on one side of the street.
street_numbers = [100, 101, 102, 103, 104, 105, 106]

street_numbers.select{|integer| integer%2==0 }

#Hash - A code for cleaning out your closet
closet = {
  "t-shirts" => 10,
  "skirts" => 3,
  "jackets" => 1
}

closet.select{|items, number| number<=5}

#4
#Array - A code for planning your diet.
breakfast_foods = ["toast","cereal","jam","eggs"]
breakfast_foods.drop_while { |breakfast| breakfast.length > 3 }

#Hash - A code for planning your vacation.
geography = {
  "England" => "London",
  "Spain" => "Madrid",
  "Peru" => "Lima",
  "Kenya" => "Nairobi"
}

geography.reject{|country, city| city.length<5}
