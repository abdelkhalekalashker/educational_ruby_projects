def num_factores(number)
    counter = 0
    (1..number).each do |num|
        if number % num == 0
            counter += 1 
        end
    end
    counter
end
#p num_factores(4)
#p num_factores(6)
#p num_factores(9)
def anti_prime?(number)
    (1...number).all? { |num| num_factores(number) > num_factores(num)}
end
#p anti_prime?(24)
#p anti_prime?(90)
#p anti_prime?(4)
#p anti_prime?(3)
#p anti_prime?(1)
#p anti_prime?(360)

def matrix_addition(arr1 , arr2)
    sup_length = arr1.length
    sub_length = arr1[0].length
    arr3 = Array.new(sup_length){Array.new(sub_length)}

    (0...sup_length).each do |i|
        (0...sub_length).each do |j|
            arr3[i][j] = arr1[i][j] + arr2[i][j]
        end
    end
    arr3
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

#p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
#p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
#p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
#p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]


def mutual_factors(*numbers)
   array = []
    mini = numbers.min
    (1..mini).each do |i|
        array << i if numbers.all?{ |num| num % i == 0}
    end
    array
end
=begin
p mutual_factors(50, 30)            # [1, 2, 5, 10]
p mutual_factors(50, 30, 45, 105)   # [1, 5]
p mutual_factors(8, 4)              # [1, 2, 4]
p mutual_factors(8, 4, 10)          # [1, 2]
p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutual_factors(12, 24, 64)        # [1, 2, 4]
p mutual_factors(22, 44)            # [1, 2, 11, 22]
p mutual_factors(22, 44, 11)        # [1, 11]
p mutual_factors(7)                 # [1, 7]
p mutual_factors(7, 9)              # [1]
=end

def tribonacci_number(number)
    return 1 if number == 1 || number == 2
    return 2 if number == 3
    return tribonacci_number(number - 1) +  tribonacci_number(number - 2) +  tribonacci_number(number - 3)
end

#p tribonacci_number(1)  # 1
#p tribonacci_number(2)  # 1
#p tribonacci_number(3)  # 2
#p tribonacci_number(4)  # 4
#p tribonacci_number(5)  # 7
#p tribonacci_number(6)  # 13
#p tribonacci_number(7)  # 24
#p tribonacci_number(11) # 274

def matrix_addition_reloaded(*matrix)
    matrex = matrix.first
    height = matrex.length
    width  = matrex[0].length
    empty_array = Array.new(height){Array.new([0] * width)}
    matrix.inject(empty_array) do |m1 , m2| 
        return nil if m2.length != height || m2[0].length != width
        matrix_addition(m1 , m2)
    end
end
=begin
 matrix_a = [[2,5], [4,7]]
 matrix_b = [[9,1], [3,0]]
 matrix_c = [[-1,0], [0,-1]]
 matrix_d = [[2, -5], [7, 10], [0, 1]]
 matrix_e = [[0 , 0], [12, 4], [6,  3]]
 p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
 p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
 p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
 p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
 p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
 p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil
=end

def squarocol?(mat)
    return true if mat.any? {|row| row.uniq.length == 1}
    return true if mat.transpose.any?{|col| col.uniq.length == 1}
    false
end
=begin
 p squarocol?([
     [:o, :x , :o],
     [:o, :x , :o],
     [:o, :x , :o],
 ]) # true
 p squarocol?([
     [:o, :o, :o],
     [:o, :o, :o],
     [:x, :x, :x],
 ]) # true
 p squarocol?([
     [:o, :x , :o],
     [:x, :o , :x],
     [:o, :x , :o],
 ]) # false
 p squarocol?([
     [1, 2, 2, 7],
     [1, 6, 6, 7],
     [0, 5, 2, 7],
     [4, 2, 9, 7],
 ]) # true
 p squarocol?([
     [1, 2, 2, 7],
     [1, 6, 6, 0],
     [0, 5, 2, 7],
     [4, 2, 9, 7],
 ]) # false
=end

def 