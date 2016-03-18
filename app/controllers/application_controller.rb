class ApplicationController < ActionController::API
	include DeviseTokenAuth::Concerns::SetUserByToken
	include ActionController::Serialization

	ActiveModel::Serializer.root = false
	ActiveModel::ArraySerializer.root = false



end