def my_map (arr, &prc)
    maped=[]

    arr.each{|num| maped<< prc.call(num)}
    maped
end

def my_select(arr, &pro)
    arr1=[]
    arr.each{|dog| arr1<< dog if pro.call(dog)==true}
    arr1
end

def my_count(arr,&pro)
    counter=0
    arr.each{|haha| counter+=1 if pro.call(haha) }
    counter
end

def my_any?(arr,&pro)
    
    
    arr.each {|ho| return true if pro.call(ho)}
    return false
end

def my_all?(arr , &pro)

    arr.each {|jo| return false if !(pro.call(jo))}
    true
end

def my_none?(arr,&pro)
    arr.each {|yo| return false if pro.call(yo)}
    true
end
