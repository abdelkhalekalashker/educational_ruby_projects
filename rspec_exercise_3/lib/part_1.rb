 def is_prime?(x)
    (2...x).each do|number|
      if x % number == 0
         return false 
      end
    end
    return x > 1
 end

 def nth_prime (lol)
   first = 2
   nth = 0
   while nth < lol 
      if is_prime?(first) 
         nth += 1
         return first if nth == lol
      end 
      first +=1
   end
end 

def prime_range (num1 , num2)
  arr = Array.new()
   while num1 <= num2
     arr << num1 if is_prime?(num1)
     num1 +=1
   end
   arr
end

