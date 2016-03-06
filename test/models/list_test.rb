require 'test_helper'

class ListTest < ActiveSupport::TestCase

	setup do
		@list = lists(:grocery)
		@grocery = groceries(:one)
	end

	test "invalid without a title" do
		assert @list.valid? , "List was not valid"
	end

	test "invalid title gives error message" do
		@list.title = nil
		@list.valid?

		assert_match /can't be blank/, @list.errors[:title].join,
		"Presence error not found on list"
	end	

	test "should respond to grocery" do
		assert_respond_to @list, :grocery
	end

	test "should contain only items that belongs to list" do
		assert_equal @list , @grocery.list
	end

end
