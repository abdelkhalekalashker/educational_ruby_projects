class Game
    def initialize(mark1 , mark2)
        @player1 = Human_player.new(mark1)
        @player2 = Human_player.new(mark2)
        @current_player = @player1
        @board = Board.new
    end2

    def switch_turn
        if @current_player == @player1
            @current_player = @player2 
        else
            @current_player = @player1
        end
    end

    def play
        while @board.empty_positions?
            @board.print
            pos = @current_player.get_position
            @board.place_mark(pos , @current_player.mark)
            if @board.win?(@current_player.mark)
                puts " winner winner checken dinner #{@current_player.mark}"
            else self.switch_turn
            end
        end
        puts "Game over"

    end
end