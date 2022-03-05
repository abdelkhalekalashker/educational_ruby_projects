class Board
    def initialize(n) 
        @grid = Array.new(n){Array.new(n , "_")}
    end

    def valid?(pos)
        pos.all?{|i| 0 <= i && i < @grid.length}    
    end

    def [](pos)
        row , col = pos
        @grid[row][col]
    end

    def []=(pos , value)
        row , col = pos
        @grid[row][col] = value
    end

    def empty?(pos)
        self[pos] == "_"
    end

    def place_mark(pos , mark)
        raise "that is an error happened check your positions values" if !empty?(pos) || !valid?(pos)
        self[pos] = mark
    end

    def print 
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def win_row?(mark)
        @grid.any? {|row| row.all?(mark)}
    end

    def win_col?(mark)
        @grid.transpose.any? {|col| col.all?(mark)}
    end

    def win_diagonal?(mark)
        main_diag = (0...@grid.length).all? do |i|
            pos = i , i
            self[pos] == mark
        end

        another_diag = (0...@grid.length).all? do |i|
            pos = i , @grid.length - 1 - i
            self[pos]==mark
        end
        main_diag || another_diag
    end

    def win?(mark)
        win_col?(mark) || win_diagonal?(mark) || win_row?(mark)
    end

    def empty_positions?
        @grid.any?{|row|row.any?("_")}
    end
end