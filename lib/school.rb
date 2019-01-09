require 'pry'

class School

attr_reader :roster, :name

def initialize(name)
  @name = name
  @roster = {}
end

def add_student (name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
end

# var = nil
# var ||= 1 -> 1

# var2 = 20
# var2 ||= 1 -> 20

def grade(grade)
  @roster[grade]
end

def sort
@roster.each do |grade, students|
  students.sort! do |x, y|
    x <=> y
  end
end
end


end