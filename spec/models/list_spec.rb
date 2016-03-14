require 'rails_helper'

RSpec.describe List, type: :model do
	it { should validate_presence_of :title }
	it { should validate_presence_of :mode }
	it { should validate_length_of(:title).is_at_least(4) }

	it "includes items" do
		list = FactoryGirl.create(:list)

		item1 = FactoryGirl.create(:item, list: list)
		item2 = FactoryGirl.create(:item, list: list)

		expect(list.items).to include(item1,item2)
	end

end
