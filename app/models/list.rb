class List < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	
	## actions
	before_save :set_icon
		
	## relations
	has_many :items , :dependent => :destroy
	
	## validations
	validates :title , presence: true , uniqueness: true
	validates :title , length: { minimum: 4 }
	validates :mode  , presence: true
	
	## scopes
	scope :recent, -> { order("updated_at desc").limit(5) }

	def as_json(options = {})
		modes = [:grocery , :person , :bill]

		hash = super(options)
		hash[:mode]  = modes[mode]
		
		return hash
	end

	def set_icon
		icons = ['shopping-basket','users','money']
		self.icon = icons[mode]
	end

end
