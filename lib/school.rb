class School

  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(grade)
    return self.roster[grade]
  end

  def sort
    sorted = self.roster.each do |grade, name|
      name.sort!
    end
    sorted
  end

end
