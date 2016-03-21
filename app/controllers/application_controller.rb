class ApplicationController < ActionController::API
	include DeviseTokenAuth::Concerns::SetUserByToken
	include ActionController::Serialization

	ActiveModel::Serializer.root = false
	ActiveModel::ArraySerializer.root = false

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :name
	end

end