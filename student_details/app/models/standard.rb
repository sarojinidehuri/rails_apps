class Standard < ActiveRecord::Base
	belongs_to :user
	has_many :students, dependent: :destroy
	has_and_belongs_to_many :teachers
	has_and_belongs_to_many :subjects
end
