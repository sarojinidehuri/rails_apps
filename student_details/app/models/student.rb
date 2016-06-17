class Student < ActiveRecord::Base
	belongs_to :user
	belongs_to :standard
	has_many :subjects, dependent: :destroy
	# has_and_belongs_to_many :teachers
end
