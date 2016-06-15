class Subject < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :students
	has_and_belongs_to_many :teachers
	has_and_belongs_to_many :standards


end
