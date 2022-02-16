def power (base , pow)
    return 1 if pow == 0
    base * power(base , pow - 1 )
end

