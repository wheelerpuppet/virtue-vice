require 'test_helper'

class ActivityReceiptsControllerTest < ActionController::TestCase
  setup do
    @activity_receipt = activity_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_receipt" do
    assert_difference('ActivityReceipt.count') do
      post :create, activity_receipt: { activity_id: @activity_receipt.activity_id, amount: @activity_receipt.amount, time_stamp: @activity_receipt.time_stamp }
    end

    assert_redirected_to activity_receipt_path(assigns(:activity_receipt))
  end

  test "should show activity_receipt" do
    get :show, id: @activity_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_receipt
    assert_response :success
  end

  test "should update activity_receipt" do
    patch :update, id: @activity_receipt, activity_receipt: { activity_id: @activity_receipt.activity_id, amount: @activity_receipt.amount, time_stamp: @activity_receipt.time_stamp }
    assert_redirected_to activity_receipt_path(assigns(:activity_receipt))
  end

  test "should destroy activity_receipt" do
    assert_difference('ActivityReceipt.count', -1) do
      delete :destroy, id: @activity_receipt
    end

    assert_redirected_to activity_receipts_path
  end
end
