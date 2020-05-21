# class Dog
#     @@dogs = 0
#     attr_accessor :name
#     def initialize(name)
#         @name = name
#         @@dogs += 1
#     end

#     def dogs
#         puts @@dogs
#     end
# end

# demy = Dog.new("Demy")

# 5.times {puts demy.name}
# demy.name = "Dog"
# puts demy.name
# tweemy = Dog.new("Tweemy")
# puts tweemy.dogs
class MyCar
    attr_accessor :color
    attr_reader :year

    def initialize(year,color,model)
        @speed = 0
        @year = year
        @color = color
        @model = model
    end
    def speed_change(delta)
        @speed += delta
        puts "Now driving @ #{@speed} km/h"
    end
    def spray_paint(new_color)
        self.color = new_color
    end
end
getz = MyCar.new(2012,"blue","i20")
getz.speed_change(30)
getz.color = "yellow"
puts getz.color
puts getz.year
getz.spray_paint "Red"
puts getz.color