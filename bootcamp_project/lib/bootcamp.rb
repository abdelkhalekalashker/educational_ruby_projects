class Bootcamp
    def initialize (name , vogo , nums)
        @name = name
        @slogan = vogo
        @student_capacity=nums
        @teachers=[]
        @students=[]
        @grades = Hash.new{|h,k| h[k]=[]}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
       @teachers<<teacher
    end

    def enroll(student)
        if students.length<@student_capacity
            students<<student
            return true
          else
           return false
          end
    end

    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        return students.length / teachers.length
    end

    def add_grade(student , grade)
        if self.enrolled?(student) 
           @grades[student]<<grade
            return true
        else return false
        end
    end

    def num_grades (student_name)
        if self.enrolled?(student_name)
           return @grades[student_name].length
        end
    end

    def average_grade(student)
          if enrolled?(student) && num_grades(student)>0
              @grades[student].sum / num_grades(student)
          end

    end

    
end 
