require 'test_helper'

class ListTest < ActiveSupport::TestCase

	should validate_presence_of(:title)
	should validate_presence_of(:mode)
	should have_many(:groceries)

	setup do
		@list = lists(:grocery)
		@grocery = groceries(:one)
	end

	test "should respond to grocery" do
		assert_respond_to @list, :groceries
	end

	test "should contain only items that belongs to list" do
		assert_equal @list , @grocery.list
	end

end
