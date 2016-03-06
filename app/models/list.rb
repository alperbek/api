class List < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	has_many :groceries , :dependent => :destroy
	has_many :people  , :dependent => :destroy
	has_many :bills	  , :dependent => :destroy

	validates :title , presence: true
	validates :mode , presence: true


	def as_json(options = {})
		icons = ['shopping-basket','users','money']
		modes = [:grocery , :person , :bill]

		datas = [groceries,people,bills]

		hash = super(options)
		hash[:icon]  = icons[mode]
		hash[:mode]  = modes[mode]

		if options[:template] == 'show'
			hash[:datas]  = datas[mode]
		end

		return hash
	end

end
