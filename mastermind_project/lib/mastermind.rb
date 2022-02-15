require_relative "code"

class Mastermind

    def initialize(number)
        @secret_code = Code.random(number)
    end

    def print_matches(another_code)
       puts "exact matches: #{@secret_code.num_exact_matches(another_code)}"
        puts "near matches: #{@secret_code.num_near_matches(another_code)}"
    end

    def ask_user_for_guess
        print 'Enter a code'
         str = gets.chomp
          Code.from_string(str)
       puts @secret_code.num_exact_matches(str)
       puts @secret_code.num_near_matches(str)
         @secret_code == str 
    end
end
