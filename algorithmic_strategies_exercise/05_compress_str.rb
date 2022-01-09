# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    lenth=str.length
    p=1
    str2=""
    (0...lenth-1).each{|char|
        if str[i]==str[i+1] && !str[i+1].nil?
            p++
        elsif p>1
            str2+=p.to_s
            str2+=str[i]
            p=1
        else str2+=str[i]
        end
    }
    str2
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
