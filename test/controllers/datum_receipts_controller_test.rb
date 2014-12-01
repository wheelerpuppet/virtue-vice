require 'test_helper'

class DatumReceiptsControllerTest < ActionController::TestCase
  setup do
    @datum_receipt = datum_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datum_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datum_receipt" do
    assert_difference('DatumReceipt.count') do
      post :create, datum_receipt: { amount: @datum_receipt.amount, data_id: @datum_receipt.data_id, time_stamp: @datum_receipt.time_stamp }
    end

    assert_redirected_to datum_receipt_path(assigns(:datum_receipt))
  end

  test "should show datum_receipt" do
    get :show, id: @datum_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datum_receipt
    assert_response :success
  end

  test "should update datum_receipt" do
    patch :update, id: @datum_receipt, datum_receipt: { amount: @datum_receipt.amount, data_id: @datum_receipt.data_id, time_stamp: @datum_receipt.time_stamp }
    assert_redirected_to datum_receipt_path(assigns(:datum_receipt))
  end

  test "should destroy datum_receipt" do
    assert_difference('DatumReceipt.count', -1) do
      delete :destroy, id: @datum_receipt
    end

    assert_redirected_to datum_receipts_path
  end
end
