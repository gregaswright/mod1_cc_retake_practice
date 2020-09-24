class MenuItem

    attr_accessor :restaurant, :recipe, :price

    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end

    def owner
        self.restaurant.owner
    end


    def self.most_expensive 
        self.all.max_by{|mi| mi.price}
    end
end