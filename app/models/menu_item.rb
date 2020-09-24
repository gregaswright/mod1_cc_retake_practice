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

    # menu_items.map{|m_items| m_items.price}.max

    def self.most_expensive 
        self.all.find{|mi| mi.price}.max
    end
end