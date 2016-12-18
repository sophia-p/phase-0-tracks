

restaurants = {
	bistro: {
		location: 'Paris, France',
		average_prices: {
			appetizers: 10,
			mains: 27,
			desserts: 12,
		},
		most_used_ingredients: [
			'wine',
			'chicken',
			'beef',
			'onion',
			'carrots',
			'butter'
		]

	},
	pizza: {
		location: 'New York, NY, USA',
		average_prices: {
			appetizers: 10,
			mains: 27,
			desserts: 8 
		},
		most_used_ingredients: [
			'garlic',
			'tomato',
			'onion',
			'flour',
			'olive oil',
		]

	},
	fancy: {
		location: 'London, UK',
		average_prices: {
			appetizers: 20,
			mains: 38,
			desserts: 15
		},
		most_used_ingredients: [
			'dover sole',
			'beef',
			'fennel',
			'cream',
		]
	},
	fish_shack: {
		location: 'Newport, RI, USA',
		average_prices: {
			appetizers: 12,
			mains: 26,
			desserts: 10
		},
		most_used_ingredients: [
			'lobster',
			'oysters',
			'crabs',
			'clams',
		]
	},	
}

p "The third most used ingredient at a pizza place: #{restaurants[:pizza][:most_used_ingredients][2]}"
p "Average prices of courses at a fancy restaurant in London: #{restaurants[:fancy][:average_prices]}"
p "Last year, the most used ingredients at the fish shack were #{restaurants[:fish_shack][:most_used_ingredients]}."
p "This year, the most used ingredients are #{restaurants[:pizza][:most_used_ingredients].push("salmon","tuna")}."
p "The location of the bistro has changed: #{restaurants[:bistro][:location]="Lyon, France"}"
meal_cost = 0
hash_fish = restaurants[:fish_shack][:average_prices]
fish_price = hash_fish.values
fish_price.each{|price| meal_cost += price}

p "The average cost of a meal at the fish shack is $#{meal_cost}."