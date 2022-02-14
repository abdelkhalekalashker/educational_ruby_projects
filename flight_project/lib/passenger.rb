class Passenger
    attr_accessor :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    attr_reader :flight_numbers
    attr_writer :flight_numbers

    def has_flight? (flight_num)
        @flight_numbers.include?(flight_num.upcase)
    end

    def add_flight(flight_numb)
        @flight_numbers << flight_numb.upcase if !self.has_flight?(flight_numb)
    end

end