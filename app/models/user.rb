class User < ActiveRecord::Base
	# Include default devise modules.
	devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
	include DeviseTokenAuth::Concerns::User

	## scopes
	# after_create :send_welcome_email
	# after_create :add_to_subscriber_list

	# def send_welcome_email
	# 	UserMailer.welcome(self).deliver
	# end


end