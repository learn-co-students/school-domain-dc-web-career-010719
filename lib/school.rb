require 'pry'

class School

  attr_reader :name, :roster

  def initialize(name, roster={})
    @roster = roster
  end

  def add_student(student, grade)
    # if self.roster[grade] == nil
    #   self.roster[grade] = [student]
    # else
    #   self.roster[grade] << student
    # end
    self.roster[grade] ||= [student]
    self.roster[grade] << student
    self.roster[grade] = self.roster[grade].uniq
  end

  def grade(num)
    self.roster[num]
  end

  def sort
    sorted_roster = {}
    self.roster.keys.sort.each do |grade|
      sorted_roster[grade] = self.roster[grade].sort
    end
    sorted_roster
  end

end
