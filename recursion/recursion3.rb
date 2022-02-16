def gamma_fnc(number)
    return nil if number == 0
    return  1  if number == 1

    (number - 1) * gamma_fnc(number - 1)
end