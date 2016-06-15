class Standard < ActiveRecord::Base
	belongs_to :user
	belongs_to :student
	has_and_belongs_to_many :teachers
	has_and_belongs_to_many :subjects
end
