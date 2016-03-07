require 'test_helper'

class ListsTest < ActionDispatch::IntegrationTest

	setup do
		@list = Factory(:list)
	end


	# test "only users view all lists" do
	# 	visit list_url(@list)

	# 	assert_equal list_path(@list), current_path

	# 	within("h1") do 
	# 		assert has_content?(@list.name)
	# 	end

	# end

	# test "only users view list informations" do

	# end

	# test "should create a new user" do
	# 	visit signup_path
	# 	click_link "Sign up"

	# 	fill_in "Email", with: "admin@admin.com"
	# 	fill_in "Password", with: "admin@admin.com"
	# 	click_button "Sign Up"

	# 	assert_equal root_url , current_path
	# end


end
