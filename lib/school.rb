# code here!
require 'pry'

class School

    # @@school_grade = []

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if !@roster.key?(grade)
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade_request)
        @roster[grade_request]
    end

    def sort
        @roster = @roster.map do |grade, students|
            binding.pry
            {grade.sort => students.sort}
        end
    end
end