class List < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	has_many :grocery
	has_many :person
	has_many :bill


	def as_json(options = {})
		icons = ['shopping-basket','users','money']
		modes = [:grocery , :person , :bill]

		datas = [grocery,person,bill]

		hash = super(options)
		hash[:icon]  = icons[mode]
		hash[:mode]  = modes[mode]

		if options[:template] == 'show'
			hash[:items]  = datas[mode]
		end

		return hash
	end

end
