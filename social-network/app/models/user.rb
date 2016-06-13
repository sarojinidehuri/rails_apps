class User < ActiveRecord::Base
	has_many :orders, dependent: :destroy
	has_many :comments, as: :commentable
	validates :username, :uniqueness => true, :length => { :in => 3..20 }
	validates :email, :uniqueness => true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :password, :confirmation => true #password_confirmation attr
   validates_length_of :password, :in => 6..20
end
