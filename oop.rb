# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
# class Unicorn
#     attr_reader :name, :color
#     def initialize(name, color = "silver")
#         @name = name 
#         @color = color
#     end
#     def say(greeting)
#         return "*~* #{greeting} *~*"

#     end 
# end 

# unicorn1 = Unicorn.new("Sparkles")
# p unicorn1
# p unicorn1.say("SLAY")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

# class Vampire
#     attr_reader :name, :pet, :thirsty
   
#     def initialize(name, pet = "bat")
#         @name = name 
#         @pet = pet
#         @thirsty = true
#     end
#     def drink
#         @thirsty = false
#     end
# end

# vampire1 = Vampire.new("Lazlo", "black cat")
# p vampire1

# vampire1.drink

# p vampire1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

# class Dragon
#     attr_reader :name, :rider, :color
#     def initialize(name, rider, color)
#         @name = name 
#         @rider = rider
#         @color = color
#         @is_hungry = true
#     end
#     def eat(meals)

#         if meals >= 4
#             @is_hungry = false
#         end
#     end
# end

# dragon1 = Dragon.new("Toothless", "Hiccup", "black")

# p dragon1

# dragon1.eat(2)

# p dragon1



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
    end

    def celebrate_birthday
        @age += 1 #this will do the same as @age = @age +1
    
        if @age >= 33
            @is_adult = true 
        end 
        if @age >= 101 
            @is_old = true
        end
    end

    def has_ring
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Samwise", "kind")
p hobbit1

hobbit2 = Hobbit.new("Merry", "goofy")

p hobbit2

33.times {hobbit2.celebrate_birthday}

p hobbit2

hobbit3 = Hobbit.new("Bilbo", "brave")

p hobbit3 

111.times {hobbit3.celebrate_birthday}

p hobbit3

hobbit4 = Hobbit.new("Frodo", "brave")

35.times {hobbit4.celebrate_birthday}

p hobbit4

hobbit4.has_ring

p hobbit4

