require 'rails_helper'

RSpec.describe User, type: :model do
	before(:each) do
		user = FactoryGirl.build(:user)
		user.password = 'password'
		user.save
	end

	



end
