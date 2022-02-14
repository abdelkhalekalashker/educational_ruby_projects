 class Flight
    def initialize (flight_number , capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end
    attr_reader :passengers 
    

    def full?
        return true if passengers.length == @capacity 
        false
    end

    def board_passenger(pass)
        @passengers << pass if pass.has_flight?(@flight_number) && !self.full?
      end

    
 end