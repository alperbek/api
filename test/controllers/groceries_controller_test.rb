require 'test_helper'

class GroceriesControllerTest < ActionController::TestCase
  setup do
    @grocery = FactoryGirl.create(:grocery)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groceries)
  end

  test "should create grocery" do
    assert_difference('Grocery.count') do
      post :create, grocery: { item: @grocery.item, list_id: @grocery.list_id, quantity: @grocery.quantity }
    end

    assert_response 201
  end

  test "should show grocery" do
    get :show, id: @grocery
    assert_response :success
  end

  test "should update grocery" do
    put :update, id: @grocery, grocery: { item: @grocery.item, list_id: @grocery.list_id, quantity: @grocery.quantity }
    assert_response 204
  end

  test "should destroy grocery" do
    assert_difference('Grocery.count', -1) do
      delete :destroy, id: @grocery
    end

    assert_response 204
  end
end
