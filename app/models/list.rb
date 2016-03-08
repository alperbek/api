class List < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	has_many :items , :dependent => :destroy

	validates :title , presence: true , uniqueness: true
	validates :mode , presence: true


	def as_json(options = {})
		icons = ['shopping-basket','users','money']
		modes = [:grocery , :person , :bill]

		hash = super(options)
		hash[:icon]  = icons[mode]
		hash[:mode]  = modes[mode]

		if options[:template] == 'show'
			hash[:items]  = items
		end

		return hash
	end

end
