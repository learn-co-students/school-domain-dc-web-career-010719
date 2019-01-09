# code here!
require 'pry'
class School
  attr_accessor :roster, :namE

 def initialize(name)
   @roster = {}
   @name = name
 end

 def grade(grade)
   return self.roster[grade]
 end

 def add_student(name, grade)
    self.roster[grade] ||= []
    # self.roster[9] -> nil
    # var = nil
    # var ||= 1 -> 1
    # var2 = 20
    # var2 ||= 1 -> 20
    self.roster[grade] << name
 end

 def sort
   sorted = {}
   self.roster.each do |key, val|
     val = val.sort()
     sorted[key] = val
   end
   return sorted
 end


end
