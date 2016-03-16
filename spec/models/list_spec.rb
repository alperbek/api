require 'rails_helper'

RSpec.describe List, type: :model do
	
	context '#validate' do
		it { should validate_presence_of :title }
		it { should validate_presence_of :mode }
		it { should validate_length_of(:title).is_at_least(4) }
		it { should respond_to(:title) }
	end

	context '#relation' do
		let(:list)  { FactoryGirl.create(:list) }
		let(:item1) { FactoryGirl.create(:item, list: list) }
		let(:item2) { FactoryGirl.create(:item, list: list) }

		it "expect includes items" do
			expect(list.items).to include(item1,item2)
		end
	end


	
end