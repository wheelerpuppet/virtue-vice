require 'test_helper'

class IndulgencesControllerTest < ActionController::TestCase
  setup do
    @indulgence = indulgences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indulgences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indulgence" do
    assert_difference('Indulgence.count') do
      post :create, indulgence: { amount: @indulgence.amount, interval_id: @indulgence.interval_id, points: @indulgence.points, subject: @indulgence.subject, user_id: @indulgence.user_id, verb: @indulgence.verb }
    end

    assert_redirected_to indulgence_path(assigns(:indulgence))
  end

  test "should show indulgence" do
    get :show, id: @indulgence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indulgence
    assert_response :success
  end

  test "should update indulgence" do
    patch :update, id: @indulgence, indulgence: { amount: @indulgence.amount, interval_id: @indulgence.interval_id, points: @indulgence.points, subject: @indulgence.subject, user_id: @indulgence.user_id, verb: @indulgence.verb }
    assert_redirected_to indulgence_path(assigns(:indulgence))
  end

  test "should destroy indulgence" do
    assert_difference('Indulgence.count', -1) do
      delete :destroy, id: @indulgence
    end

    assert_redirected_to indulgences_path
  end
end
