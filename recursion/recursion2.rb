def add_numbers(array)
    return nil if array.empty?
    return array[0] if array.length == 1
    array[0] + add_numbers(array[1..-1])
end