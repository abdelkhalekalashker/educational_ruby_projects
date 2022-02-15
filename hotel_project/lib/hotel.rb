require_relative "room"

class Hotel
   
    def initialize(name , hash)
        @name = name
        @rooms = {}
        hash.each do |room_name , cap|
            @rooms[room_name] = Room.new(cap)
        end
    end

    def name
        @name.split(" ").map(&:capitalize).join(" ")
    end

    def rooms 
        @rooms
    end

    def room_exists?(str)
        @rooms.include?(str)
    end

    def check_in(nam , roome)
       if  !room_exists?(roome)
            puts "sorry, room does not exist"
       elsif @rooms[roome].add_occupant(nam) == true
        puts 'check in successful'
        return 
       end
        puts "sorry, room is full"
    end

    def has_vacancy?
        @rooms.values.any? {|room| room.available_space > 0}
    end

    def list_rooms
        @rooms.each { |name , room| puts "#{name} : #{room.available_space}"}
    end


end
