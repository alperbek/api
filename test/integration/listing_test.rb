require 'test_helper'

class ListingTest < ActionDispatch::IntegrationTest

	test "listing the items in database" do
		get '/lists'
		assert_equal 200, response.status
		refute_empty response.body
	end

end