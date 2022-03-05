class Board
    def initialize(n)
        @grid =Array.new(n){Array.new(n , "_")}
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
        pos.all?{|i| 0<=i && i<@grid.length }
    end

    def empty?(pos)
        self[pos] == "_"
    end

    def place_mark(pos , mark)
        raise "عيييييييييييب" if !empty?(pos) || !valid(pos)
        @grid[pos] = mark
    end

    def mepty_positions?
        @grid.any? do |row|
            row.any? {|ele| ele == "_"}
        end
    end

    def row_win?(mark)
        @grid.any? {|row| row.all?(mark)}
    end

    def col_win?(mark)
        @grid.transpose.any?{|col| col.all?(mark)}
    end

    def diag_win?(mark)
        left_to_right(0...@grid.length).all? do |num|
            pos = num , num
            self[pos] == mark
        end

        r_to_l = (0...@grid.length).each do |num|
            pos = num , @grid.length - 1 - num
            self[pos] == mark
        end
        r_to_l || left_to_right
    end

    def win?(mark)
        col_win?(mark) || row_win?(mark) || diag_win?(mark)
    end

    def legal_positions
        arr =[]
        (0...@grid.length).each do |row|
            (0...@grid.length).each do |ele|
                pos = row , ele
                arr << ele if empty?(pos) && valid?(pos) 
            end
        end
        arr
            
    end

end