class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |hash, k| hash[k] = [] }
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
    @teachers << teacher
  end

  def enroll(student)
    if @student_capacity > @students.length
        @students << student
        return true
    else 
        return false
    end
   end

   def enrolled?(student)
         @students.each do |accepted|
            if student == accepted
                  return true
            end
         end
     return false
   end

   def student_to_teacher_ratio
    (@students.length / @teachers.length).to_i
   end

   def add_grade(student, grade)
    if @students.include?(student)
        @grades[student] << grade
        return true
    else 
        return false
    end
   end 

   def num_grades(student)
    @grades[student].length
   end

   def average_grade(student)
    if @grades[student] == [] || !@students.include?(student)
        return nil
    elsif @students.include?(student)
        return (@grades[student].sum / @grades[student].length)
    end
   end

end
