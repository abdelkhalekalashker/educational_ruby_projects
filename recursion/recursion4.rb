def ice_cream_shop(array , str)
    return false if array.empty?
    return true  if array[0] == str

    ice_cream_shop(array[1..-1], str)
end