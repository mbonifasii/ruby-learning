class Computer
    @@amount_computers = 0
    def initialize(id, brand, cpu, ram)
        @@amount_computers += 1
        @computer_id = id
        @computer_brand = brand
        @computer_cpu = cpu
        @computer_ram = ram
    end

    def getAmountComputer
        puts "Total number of computers #{@@amount_computers}"
    end

    def displayDetails
        puts "Computer Id #{@computer_id}"
        puts "Computer's brand #{@computer_brand}"
        puts "Computer CPU #{@computer_cpu}"
        puts "Computer RAM Capacity #{@computer_ram}"
    end

end

#Create Objects
computer1 = Computer.new("1", "Asus", "Core i7", "12")
computer2 = Computer.new("2", "Dell", "Core i5", "8")

puts computer2.displayDetails()