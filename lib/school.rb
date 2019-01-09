# code here!
require 'pry'

class School

  attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if self.roster[grade]
      self.roster[grade] << student
    else
      self.roster[grade] = [student]
    end
  end

  def grade(class_grade)
    self.roster[class_grade]
  end

  def sort
    self.roster.each do |grade, student_array|
      student_array.sort!
    end
  end



end


test = School.new('Bayside High')

# binding.pry

0
