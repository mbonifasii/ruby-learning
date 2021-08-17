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