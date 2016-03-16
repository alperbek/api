class UserMailer < ApplicationMailer

	def welcome
		mail(from: 'admin@example.com', to: user.email, subject: 'Welcome User!')
	end

end
