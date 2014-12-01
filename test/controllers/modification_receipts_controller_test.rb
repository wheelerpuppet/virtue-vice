require 'test_helper'

class ModificationReceiptsControllerTest < ActionController::TestCase
  setup do
    @modification_receipt = modification_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modification_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modification_receipt" do
    assert_difference('ModificationReceipt.count') do
      post :create, modification_receipt: { activity_id: @modification_receipt.activity_id, new_points: @modification_receipt.new_points, time_stamp: @modification_receipt.time_stamp }
    end

    assert_redirected_to modification_receipt_path(assigns(:modification_receipt))
  end

  test "should show modification_receipt" do
    get :show, id: @modification_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modification_receipt
    assert_response :success
  end

  test "should update modification_receipt" do
    patch :update, id: @modification_receipt, modification_receipt: { activity_id: @modification_receipt.activity_id, new_points: @modification_receipt.new_points, time_stamp: @modification_receipt.time_stamp }
    assert_redirected_to modification_receipt_path(assigns(:modification_receipt))
  end

  test "should destroy modification_receipt" do
    assert_difference('ModificationReceipt.count', -1) do
      delete :destroy, id: @modification_receipt
    end

    assert_redirected_to modification_receipts_path
  end
end
