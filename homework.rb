=begin

    What is the difference between Class and Module in Ruby?

        Firt of all, a class is basically a template that we can use to create instances of objects. 
        An Object is anything that has attibutes and methods.
        So, modules are very similar to classes, but the main difference is that we cannot create objects from a module.
        Normally, we use modules to reduce code and implement their methods in some classes 
        You can check an example of modules and clases in example.rb

        

    Homework - Prime Numbers

=end

class Prime
    def getARandomNumber
        return rand 1 .. 10
    end

    def isAPrimeNumber number
        iterator = number
        countDivisibility = 0
        
        while iterator > 1
            if number % iterator == 0
                countDivisibility += 1
            end
            iterator -= 1
        end

        return countDivisibility == 1
    end

    def get_prime_numbers
        number = getARandomNumber()
        amountPrimerNumbers = 0
        index = 2

        puts "Amount prime numbers\n#{number}\n--"

        while amountPrimerNumbers != number
            if isAPrimeNumber(index) == true
                amountPrimerNumbers += 1
                print "#{index}, "
            end
            index += 1
        end
        puts ""
    end
end

prime = Prime.new
prime.get_prime_numbers()