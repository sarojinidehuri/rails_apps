class User < ActiveRecord::Base
	has_many :students, dependent: :destroy
	has_many :standards, dependent: :destroy
	has_many :teachers, dependent: :destroy
	has_many :subjects, dependent: :destroy
	require "base64"

		enc   = Base64.encode64('Send reinforcements')
                    # -> "U2VuZCByZWluZm9yY2VtZW50cw==\n"
		# plain = Base64.decode64(enc)
                    # -> "Send reinforcements"
	validates :username, :uniqueness => true, :length => { :in => 3..20 }
	validates :email, :uniqueness => true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :password, :confirmation => true #password_confirmation attr
   validates_length_of :password, :in => 6..20
end
