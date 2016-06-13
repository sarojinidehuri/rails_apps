class Usermailer < ActionMailer::Base
  default from: "cute.sarojini20@gmail.com"
  def welcome(tomail,username,msg)
  	@user = username
  	@msg =msg
	mail(:to=>tomail,
		:subject=>"welcome")
	end

end
