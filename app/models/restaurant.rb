class Restaurant

    attr_accessor :owner, :name, :star_rating

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select{|m_item| m_item.restaurant == self}
    end

    def recipes
        self.menu_items.map{|m_item| m_item.recipe}
    end

    def has_dish?(r_recipe)
        self.menu_items.any? {|m_item| m_item.recipe == r_recipe}
    end

    def self.highest_rated
        self.all.max{|restaurant| restaurant.star_rating}
       # I think my biggest weakpoint is understanding how class methods work.
    end

end