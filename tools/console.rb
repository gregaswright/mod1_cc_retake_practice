# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

cheese = Recipe.new("Grilled Cheese", "Chefs Special Grilled Cheese")
cake = Recipe.new("Cake", "Red V Cake")
steak = Recipe.new("Steak", "Steak and Potatos")
fish = Recipe.new("Fish", "Fish of the Day")

jeff = RestaurantOwner.new("Jeff", 32)
fred = RestaurantOwner.new("Fred", 36)
bob = RestaurantOwner.new("Bob", 25)
neal = RestaurantOwner.new("Neal", 29)

bills = Restaurant.new(jeff, "Bill's", 2)
jons = Restaurant.new(fred, "Jon's", 5)
teds = Restaurant.new(bob, "Ted's", 3)
kens = Restaurant.new(neal, "Ken's", 1)

mi1 = MenuItem.new(bills, cheese, 15)
mi2 = MenuItem.new(jons, cake, 10)
mi3 = MenuItem.new(teds, steak, 13)
mi4 = MenuItem.new(kens, fish, 14)
mi5 = MenuItem.new(bills, fish, 25)
mi6 = MenuItem.new(jons, steak, 17)
mi7 = MenuItem.new(teds, cake, 22)
mi8 = MenuItem.new(kens, cheese, 28)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
