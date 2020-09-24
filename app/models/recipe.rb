class Recipe

    attr_accessor :description 
    attr_reader :name

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|m_items| m_items.recipe == self}
    end

    def restaurants
        self.menu_items.map{|m_items| m_items.restaurant}
    end

    def average_price
        self.menu_items.reduce(0){|sum , m_items| sum + (m_items.price / menu_items.count)}
    end

    def highest_price
        self.menu_items.map{|m_items| m_items.price}.max
    end

    def cheapest_restaurant
       self.menu_items.min {|m_items| m_items.price}.restaurant
    end

    def self.inactive
        
    end

end