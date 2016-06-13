class User < ActiveRecord::Base
	has_many :orders, dependent: :destroy

	
   attr_accessor :password
	# EMAIL_REGEX = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i
  validates :username, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :uniqueness => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
 # validates :email, email_format: { message: "doesn't look like an email address" }
   validates :password, :confirmation => true #password_confirmation attr
   validates_length_of :password, :in => 6..20 #, :on => :create
  # validates_confirmation_of :user_name, :password
   # validates_confirmation_of :email_address, :message => "minimum is 6 charecter"
end
