def reverser(str,&pro)
    pro.call(str.reverse)
end

def word_changer(sentence ,&pro)

    words=sentence.split(" ")
    news=words.map{|word| pro.call(word) }
    news.join(" ")
end

def  greater_proc_value(num , pro1, pro2)
    num1=pro1.call(num)
    num2=pro2.call(num)
    if num1 >= num2
        return num1
    else
    return num2
    end
end

def and_selector(arr, pro1,pro2)
    arr.select{|num| pro1.call(num)&&pro2.call(num)}
end

def alternating_mapper(arr , pro1, pro2)
check=0
arr1=[]
arr.each do|ele| 
    if check.odd?
       arr1<< pro2.call(ele)
        check+=1
    else
        arr1<<pro1.call(ele)
        check+=1
    end
end
    arr1

end