require 'pry'

class School
	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		#using ||=, an empty array value is only set for the @roster[grade] key if that value does not yet exist. Otherwise, it leaves it empty.
		@roster[grade] ||= []
		@roster[grade] << name
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, name_arr|
			name_arr.sort! do |a, b|
				a <=> b
			end
		end
	end

end