class ItemSerializer < ActiveModel::Serializer
	attributes :id,:item,:url

	def url
		v1_list_item_path(object.list_id,object.id)
	end
end
