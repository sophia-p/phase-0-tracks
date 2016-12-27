class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {p "Woof!"}
  end

  def roll_over
  	p "*rolls over*"
  end

  def dog_years(human_age)
  	dog_age = human_age*7
  	p dog_age
  end

  def steals_something(something)
  	p "I stole #{something}!"
  end

end

puppy = Puppy.new
puppy.fetch("tennis ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(3)
puppy.steals_something("socks")


