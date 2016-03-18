class ListSerializer < ActiveModel::Serializer
	#include ActionView::Helpers::DateHelper
	
	attributes :id,:slug,:icon,:title,:updated_at
	
	# def updated_at
	# 	time_ago_in_words(object.updated_at)
	# end

end