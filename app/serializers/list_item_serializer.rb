class ListItemSerializer < ActiveModel::Serializer
	#include ActionView::Helpers::DateHelper
	
	attributes :id,:icon,:title

	has_many :items
	
	# def updated_at
	# 	time_ago_in_words(object.updated_at)
	# end

end