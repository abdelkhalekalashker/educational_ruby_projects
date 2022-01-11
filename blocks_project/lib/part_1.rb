def  select_even_nums(arr)

    arr1=[]
    arr1=arr.select {|g| g % 2 == 0}

    arr1
end 

def reject_puppies(arr)

      arr.reject {|p| p["age"]<=2 } 
end


def count_positive_subarrays(array1)
    array1.count {|h| h.sum>0}
end

def aba_translate(word)
    voils="aeiou"
    newWord=""
    
    word.each_char do |cha|
        if voils.include?(cha)
            newWord+=cha+"b"+cha
        else
            newWord+=cha
        end
    end
    newWord
end

def aba_array(array)
    array.map{|wor| aba_translate(wor)}
  end