class RestaurantOwner

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select{|restaurant| restaurant.owner == self}
    end

    def menu_items
        self.restaurants.map{|restaurant| restaurant.menu_items}
    end

    def self.average_age
        self.all.reduce(0){|sum, owners| sum + (owners.age / @@all.count)}
    end

    # def sell_restaurant(restaurant, buyer)
    #     self.restaurants do |o_restaurant|
    #         if o_restaurant.owner == self
    #             o_restaurant.owner

    # end

end