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
	scope :by_user, -> (user) { where(user: user) if user.present? }
	scope :recent,  -> { where('created_at > ?', 2.days.ago ) }

	protected

	def set_icon
		icons = ['shopping-basket','users','money']
		self.icon = icons[mode]
	end

end
