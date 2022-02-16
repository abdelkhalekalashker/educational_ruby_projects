def strange_sum(array)
    selector = 0
    counter = 0
    while (selector < array.length - 1 )
        kalbz = 1 + selector
        while (kalbz < array.length )
            if array[selector] + array[kalbz] == 0
                counter += 1
                break
            end
            kalbz += 1
        end
        selector += 1
    end

    counter
end

##p strange_sum([2, 47, 3, 4, -47]) 
##p strange_sum([2, -5, 5, 4, -47]) 
##p strange_sum([20, -20, 3, 44, -47]) 
##p strange_sum([2, 47, 3, 4, -47, 6 , 0 , 0 , 90 , -90 , -2 , -6 ]) 

def pair_product(array , number)
    selector = 0
    counter = false
    while (selector < array.length - 1 )
        kalbz = 1 + selector
        while (kalbz < array.length )
            return true if array[selector] * array[kalbz] == number
                
            kalbz += 1
        end
        selector += 1
    end

    counter
end 

#p pair_product([4, 2, 5, 8], 16)    # true
#p pair_product([8, 1, 9, 3], 8)     # true
#p pair_product([3, 4], 12)          # true
#p pair_product([3, 4, 6, 2, 5], 12) # true
#p pair_product([4, 2, 5, 7], 16)    # false
#p pair_product([8, 4, 9, 3], 8)     # false
#p pair_product([3], 12)  

def rampant_repeats(string , hash)
    chars = string.split("")
    new_chars = ""
    chars.each{|char| 
        if hash[char] == nil
            new_chars += char
        else new_chars += char * hash[char]
        end
    }
    new_chars
end


#   p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
 #   p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
  #  p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
   # p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

def perfect_square(number)
    return true if number == 1
    check = number / 2
    while (check > 0)
       return true  if check * check == number 
        check -= 1
    end
    false
end

#p perfect_square(4)     # true
#p perfect_square(64)    # true
#p perfect_square(100)   # true
#p perfect_square(169)   # true
#p perfect_square(2)     # false
#p perfect_square(40)    # false
#p perfect_square(32)    # false
#p perfect_square(50)    # false

