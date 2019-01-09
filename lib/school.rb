# code here!
require 'pry'

class School

    # @@school_grade = []
    attr_reader :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
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
        @roster.each do |grade, students|
          @roster[grade] = students.sort
        end
    end
end
