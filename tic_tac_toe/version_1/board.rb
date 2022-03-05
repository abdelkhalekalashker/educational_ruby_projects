class Board
    def initialize
        @grid = Array.new(3) { Array.new(3, '_') }
    end

    def [](pos)
        row , col = pos
        @grid[row][col]
    end

    def []=(pos , value)
        row , col = pos
        @grid[row][col] = value
    end

    def valid?(pos)
        row, col = pos
        pos.all? do |i|
            0 <= i && i < @grid.length
        end
    end

    def empty?(pos)
        self[pos] == '_'
    end

    def place_mark(pos, mark)
        raise 'invali  mark' if !valid?(pos) || !empty?(pos)
        self[pos] = mark
    end

    def print
        @grid.each do |row|
            puts row.join(' ')
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
            @grid [i][i] == mark
        end

        not_main = (0...@grid.length).all? do |i|
            @grid[i][@grid.length - i - 1] == mark
        end
        not_main || main_diag

    end

    def win?(mark)
        win_col?(mark) || win_diagonal?(mark) || win_row?(mark)
    end

    def empty_positions?
        (0...@grid.length).each do |row|
            (0...@grid.length).each do |col|
                pos = row , col
               return true if @grid[row][col] == "_"
            end
        end
        false
    end
end

