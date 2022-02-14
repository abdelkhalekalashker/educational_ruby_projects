class Dog

    def initialize(name , bread , age , bark , favorite_food)
        @name = name
        @breed= bread
        @age  = age
        @favorite_foods = favorite_food
        @bark=bark
    end
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def age=(b)
        @age=b
    end

    def bark
        if @age>3 
           return @bark.upcase
        else return @bark.downcase
        end
    end

    def favorite_foods
        @favorite_foods
    end
    
    def favorite_food?(food)
        @favorite_foods.include?(food.capitalize)
    end 
end
