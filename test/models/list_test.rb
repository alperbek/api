require 'test_helper'

class ListTest < ActiveSupport::TestCase

	should validate_presence_of(:title)
	should validate_presence_of(:mode)
	should have_many(:groceries)

	setup do
		@list = FactoryGirl.create(:list)
		@grocery = FactoryGirl.create(:grocery,list: @list)
	end

	test "should respond to grocery" do
		assert_respond_to @list, :groceries
	end

	# test "as_json should set json output to expected format" do
	# 	@list.as_json.stubs(:json)
	# 	@list.as_json

	# 	assert "Expected format" , @list.to_json
	# end

	# test "Navigation is available to the grocery page" do
	# 	visit root_url
	# 	within("#grocery_#{@grocery.id}") do
	# 		click_link @list.title
	# 		assert_equal link_path(@link) , current_path
	# 	end
	# end



end
