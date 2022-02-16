def range(num1 , num2)
    return [] if num1 > num2
    return [num1] if num1 == num2
    [num1] + range(num1 + 1 , num2)
end 