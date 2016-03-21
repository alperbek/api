class FeedSerializer < ActiveModel::Serializer
	include ActionView::Helpers::DateHelper

	attributes :id,:user,:feed,:created_at

	def user
		user = User.find(object.user_id)
		return { id: user.id,name: user.name }
	end

	def created_at
		time_ago_in_words(object.created_at)
	end

end
