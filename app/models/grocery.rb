class Grocery < ActiveRecord::Base
  belongs_to :list , touch: true

  #before_save :make_rotting
  #after_create :send_notification

  #scope :completed, -> { where(completed: true) }
  #scope :recent , -> { order("created_at desc").limit(10) }




  # def make_rotting
  # 	self.completed = true if age > 20
  # end

  # def send_notification
  # 	return 
  # end

end