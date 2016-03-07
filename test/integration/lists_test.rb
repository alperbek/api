require 'test_helper'

class ListsTest < ActionDispatch::IntegrationTest

	setup do
		@list = FactoryGirl.create(:list)
		@grocery = FactoryGirl.create(:grocery, list: @list)
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

	test "return lists" do 
		get '/lists'
		assert_equal	200, response.status
		refute_empty response.body
	end

	test "returns lists filtered by mode" do
		grocery = FactoryGirl.create(:list,mode:0)
		person  = FactoryGirl.create(:list,mode:1)

		get '/lists?mode=0'
		assert_equal 200 , response.status

		lists = JSON.parse(response.body,symbolize_names: true)
		titles = lists.collect { |z| z[:title] }

		assert_includes titles, grocery.title
		refute_includes titles, person.title
	end



end
