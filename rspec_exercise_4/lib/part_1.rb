def my_reject (arr , &prc)
    new_arr = []
    arr.each do |ele| 
        new_arr << ele if !prc.call(ele)
    end
    new_arr
end 

def my_one?(arr , &prc)
    check = 0
    arr.each do |ele|
        check += 1 if prc.call(ele)
    end
    return true if check == 1
    return false
end

def hash_select(hash , &prc)
    new_hash = {}
    hash.each do |k , v| 
        new_hash[k] = v if prc.call(k , v)
    end
    new_hash
end

def xor_select (arr , prc1 ,  prc2)
    new_arr = []
    arr.each do |ele|
      new_arr << ele if ((prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele)))  
    end
    new_arr
end

def proc_count(value , arr)
    check = 0
    arr.each do |proc| 
        check +=1 if proc.call(value)
    end
    check
end