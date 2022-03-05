class Human_player
    def initialize(mark_value)
        @mark = mark_value
    end

    attr_reader :mark

    def get_position
        puts "player #{mark.to_s}please enter valid position "
        pos = gets.split(" ").chomp.map{&:to_i}
        raise"invalid input here" if pos.length != 2 
        pos
    end
end