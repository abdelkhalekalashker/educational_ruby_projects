# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.length==0
        self.max - self.min
    end

    def average
        return nil if self.length == 0
        self.sum * 1.0 / self.length * 1.0
    end

    def median
        return nil if self.empty?

        mid = self.length / 2
        sortd = self.sort
        if self.length.odd?
            return sortd[mid]
        end
        midl=mid - 1
        (sortd[mid] + sortd[midl]) / 2.0
    end
        
    def counts
        hash = Hash.new(0)
        self.each {|char| hash[char] += 1}
        hash
    end
     
    def my_count(ch)
       hash = Hash.new(0)
       self.each {|char| hash[char]+=1}
       hash[ch]
    end

    def my_index(char)
        return nil if !self.include?(char)
        ind=0
        self.each {|cha| 
        if char == cha 
        return ind
        end
        ind += 1}
    end
    def my_uniq
        arr=[]

        self.each { |char| arr<<char if !arr.include?(char)}
        arr
    end

    def my_transpose
        trans=[]
        self.each_with_index do |ele , idx1|
            row=[]
            self.each_with_index do |ele2,idx2|
                row<<self[idx2][idx1]
            end 
            trans<<row
        end
        trans
    end
end 
