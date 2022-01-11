def all_words_capitalized?(arr)
    arr.all? {|word|  word==word.capitalize}
end

def no_valid_url?(arr)
    arr.none? {|url| url.end_with?(".com", ".net",".org",".io")}
end
def any_passing_students?(arrayofhashes)

    arrayofhashes.any? do|student|
        if(student[:grades].sum/student[:grades].length )>74
            true
        end
    end 
end
