class School
  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !roster.key?(grade)
      roster[grade] = []
    end
    roster[grade] << student
  end

  def grade(grade)
    if roster.key?(grade)
      return roster[grade]
    else
      return []
    end
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    return sorted
  end
end