class Student < ActiveRecord::Base
	belongs_to :user
	has_many :standards, dependent: :destroy
	has_many :subjects, dependent: :destroy
	has_and_belongs_to_many :teachers
end
