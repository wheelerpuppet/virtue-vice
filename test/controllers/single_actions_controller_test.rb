require 'test_helper'

class SingleActionsControllerTest < ActionController::TestCase
  setup do
    @single_action = single_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:single_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create single_action" do
    assert_difference('SingleAction.count') do
      post :create, single_action: { due_date: @single_action.due_date, is_complete: @single_action.is_complete, name: @single_action.name, points: @single_action.points, user_id: @single_action.user_id }
    end

    assert_redirected_to single_action_path(assigns(:single_action))
  end

  test "should show single_action" do
    get :show, id: @single_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @single_action
    assert_response :success
  end

  test "should update single_action" do
    patch :update, id: @single_action, single_action: { due_date: @single_action.due_date, is_complete: @single_action.is_complete, name: @single_action.name, points: @single_action.points, user_id: @single_action.user_id }
    assert_redirected_to single_action_path(assigns(:single_action))
  end

  test "should destroy single_action" do
    assert_difference('SingleAction.count', -1) do
      delete :destroy, id: @single_action
    end

    assert_redirected_to single_actions_path
  end
end
