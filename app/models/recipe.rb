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
        #returns an array of all the `MenuItem` instances for the `Recipe`.
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
        #self.all.select{|recipe| recipe.menu_items}
        # menu_items = MenuItem.all.select {|menu_item| menu_item.recipe }
        
        # menu_items.map {|menu_item| menu_item.recipe}
        
        # returns an array of `Recipe` instances that are not 
        # currently being sold at any restaurants.

        # MenuItem.all.select{|menu_item| !menu_item.recipe == self} 
        # active_menu_items.select {|menu_item| menu_item.recipe == self}

        abc = MenuItem.all.map {|menu_item| menu_item.recipe}
        Recipe.all.select{|e| !abc.include?(e)}
    
    end

end

# my_zip = [1,2,3,4,5,6]
# [2,3,5].all?{|z| my_zip.include?(z)}
# => true 
# [20,3,5].all?{|z| my_zip.include?(z)}
# => false


# a = [1,2,3,4]
# b = [1,2,4]
# a.select { |elem| !b.include?(elem) }