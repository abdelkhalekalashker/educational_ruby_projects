def reverse(str)
    return str if str.length < 2

    return str[-1] + reverse(str[0..-2])
end
