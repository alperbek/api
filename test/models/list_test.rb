require 'test_helper'

class ListTest < ActiveSupport::TestCase
  
	test "invalid without a title" do
		l = lists(:grocery)

		assert l.valid? , "List was not valid"
	end

	test "invalid title gives error message" do
		l = lists(:person)
		l.title = nil
		l.valid?

		assert_match /can't be blank/, l.errors[:title].join,
		"Presence error not found on list"
	end


end
