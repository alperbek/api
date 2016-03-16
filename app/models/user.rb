class User < ActiveRecord::Base
	# Include default devise modules.
	devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
	include DeviseTokenAuth::Concerns::User

	## scopes
	after_create :send_welcome_email


	def send_welcome_email
		## TODO: write mailer
	end


end