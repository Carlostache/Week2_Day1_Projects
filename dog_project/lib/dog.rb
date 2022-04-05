class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    def name
        p @name
    end

    def breed 
        p @breed
    end

    def age 
        p @age
    end

    def age=(new_age)
        @age = new_age
        p @age
    end

    def bark
        if @age > 3
            return @bark.upcase
        elsif 3 >= @age
            return @bark.downcase
        end
    end

    def favorite_foods
        p @favorite_foods
    end

    def favorite_food?(str)
        @favorite_foods.each do |food|
            if str.capitalize == food
                return true
            end
        end
        return false
    end

end

Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
