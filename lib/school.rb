class School

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if self.roster[grade].nil?
      self.roster[grade] = []
      self.roster[grade] << name
    else
      self.roster[grade] << name
    end
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
