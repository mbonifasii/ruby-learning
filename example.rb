# I am gonna use this module to implement its methods in the classes below
module MyModule
    def move_along transport
        puts "The #{transport} Moving"
    end

    def stop_moving transport
        puts "The #{transport} stopped"
    end
end

class Car 
    include MyModule
end

class Bike
    include MyModule
end

myCar = Car.new
myCar.move_along("Car")

myBike = Bike.new
myBike.move_along("Bike")

puts ""

myCar.stop_moving("Car")
myBike.stop_moving("Bike")