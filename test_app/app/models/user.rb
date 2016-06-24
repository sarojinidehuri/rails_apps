class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true, length: {:maximum => 40} 
	validates :address, presence: true
	validates :phone_no, presence: true
	before_create :before_create_message

	private
	def before_create_message
		self.name = 'Mr/Miss ' + self.name
	end
end
