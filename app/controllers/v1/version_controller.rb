class V1::VersionController < ApplicationController
	abstract!

	before_action :configure_permitted_parameters, if: :devise_controller?
	#before_action :authenticate_user!

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :name
	end

end