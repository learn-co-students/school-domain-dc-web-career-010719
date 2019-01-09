# code here!
require 'pry'

class School

    attr_reader :roster
    
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
        self.roster.each do |grade, students|
            self.roster[grade] = students.sort
        end
    end

end