require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = FactoryGirl.create(:bill)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { due_date: @bill.due_date, list_id: @bill.list_id, price: @bill.price }
    end

    assert_response 201
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should update bill" do
    put :update, id: @bill, bill: { due_date: @bill.due_date, list_id: @bill.list_id, price: @bill.price }
    assert_response 204
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_response 204
  end
end
