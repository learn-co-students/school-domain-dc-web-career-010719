# code here!
require 'pry'

class School

<<<<<<< HEAD
    attr_reader :roster
    
=======
    # @@school_grade = []
    attr_reader :roster

>>>>>>> 892e71713297f4502222004758201a75a5707282
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !self.roster.key?(grade)
            self.roster[grade] = []
        end
        self.roster[grade] << student_name
    end

    def grade(grade_request)
        self.roster[grade_request]
    end

    def sort
<<<<<<< HEAD
        self.roster.each do |grade, students|
            self.roster[grade] = students.sort
        end
    end

end
=======
        @roster.each do |grade, students|
          @roster[grade] = students.sort
        end
    end
end
>>>>>>> 892e71713297f4502222004758201a75a5707282
