def   element_count (arr)
    ha = Hash.new(0)

    arr.each do |ele|
        ha[ele] +=1
    end
    ha
end

def char_replace!(orignal , replacer)
    (0...orignal.length).each do |i|
        if replacer.has_key?(orignal[i])
            orignal[i] = replacer[orignal[i]]
        end
    end
    orignal
end

def product_inject(arra)
    arra.inject {|product , ele| ele * product}
end