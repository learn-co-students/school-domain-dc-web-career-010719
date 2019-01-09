require 'pry'
class School 
  
  def initialize (school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def roster 
    @roster
  end
  
  def add_student(student_name, student_grade)
    
    if self.roster.keys.include? student_grade
      self.roster[student_grade] << student_name
    else 
    self.roster[student_grade] = []
    self.roster[student_grade] << student_name
  end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each {|grade, students|
    self.roster[grade] = students.sort
    }
    end
end 
  