# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
def prime?(num1)
    return false if num1<2

    (2...num1).none?{|l| num1%l==0}
end

def largest_prime_factor(integer)

    best=0
    (1..integer).each do |int| 
         if  prime?(int) && integer % int ==0
            best=int 
         end
    end
    best
end


def unique_chars?(str)
    
    stin=""

    (0...str.length).each do|i| 
        if stin.include?(str[i])
            return false
        else stin+=str[i]
        end
    end
    true
end


def dupe_indices(array)

    hash=Hash.new{|h , k| h[k]=[]}
    array.each_with_index do |char , idx|
        hash[char]<<idx   
    end
    hash.select {|ele , arr| arr.length>1}
end


