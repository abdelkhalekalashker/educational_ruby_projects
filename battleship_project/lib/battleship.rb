require_relative "board"
require_relative "player"
 
class Battleship
    def initialize(n)
        @player = Player.new 
        @board = Board.new(n)
        @remaining_misses = @board.size / 2
    end
    attr_reader :board , :player 

    def start_game
        @board.place_random_ships
        print @board.num_ships
        @board.print
    end

    def lose?
        if @remaining_misses > 0
            return false
        end
        p "you lose"
            return true
    end

    def win?
        if board.num_ships < 1
            p "you win"
            return true
        end 
        false 
    end

    def game_over?
        if win? || lose?
             return true
        end
        return false
    end

    def turn
        arr = @player.get_move
        @remaining_misses -= 1 if !@board.attack(arr)
        board.print
        print @remaining_misses

    end

end
