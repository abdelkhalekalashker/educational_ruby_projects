class Stack
    
    def initialize
        @array = []
    end
    def self
        @array
    end

    def push(element)
        @array.push(element)
    end

    def top
        raise "Empty stack" if @array.empty?
        @array.last
    end

    def pop
        raise "Empty stack" if @array.empty?
        @array.pop
    end

    def max
        raise "Empty stack" if @array.empty?
        @array.max
    end

    def print
       @array
    end


    def mean
           sum = @array.reduce(:+)
        length = @array.length

        avg = sum / length
    end


end



arr=[44,6,787,90]
stack = Stack.new




stack.push(6)
p stack.max

stack.push(9)
stack.push(7)
p stack.top
stack.pop
p stack.top
stack.push(2)
stack.push(0)
p stack.mean
