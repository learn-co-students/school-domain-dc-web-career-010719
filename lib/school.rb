class School

  attr_accessor :name, :roster

def initialize(name)
  @roster = {}
  @name = name
end

    def add_student(student, grade)
#       hash["new_key"] = []
# hash["new_key"] << "new_value_for_value_array"
#
# hash
#  => {"new_key"=>["new_value_for_value_array"]}
      self.roster[grade] ||= [] #creating an empty array within the hash
      self.roster[grade] << student #passing students into hash
    end

    def grade(grades)
      return @roster[grades]
    end

    def sort
    sorted_hash = {}
    roster.each do |grades, student| #sortng through hash by grades is a key, students is a value
      sorted_hash[grades] = student.sort #storing student sorted array in sorted hash
    end
    return sorted_hash
  end
end
