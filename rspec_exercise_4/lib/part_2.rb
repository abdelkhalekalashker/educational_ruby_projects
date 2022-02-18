def proper_factors (number)
    if number > 0
        (1...number).select {|num| number % num == 0 }
    end
end

def aliquot_sum (number)
    proper_factors(number).sum
end

def perfect_number?(number)
    return true  if aliquot_sum(number) == number 
    return false
end

def ideal_numbers(number)
    pointer = 2
    arr = []
    while (arr.length < number) do 
        arr << pointer if pointer == aliquot_sum(pointer)
        pointer += 1
    end
    arr
end