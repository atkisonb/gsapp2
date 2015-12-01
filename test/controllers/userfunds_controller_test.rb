require 'test_helper'

class UserfundsControllerTest < ActionController::TestCase
  setup do
    @userfund = userfunds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userfunds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userfund" do
    assert_difference('Userfund.count') do
      post :create, userfund: { fund_id: @userfund.fund_id, user_id: @userfund.user_id }
    end

    assert_redirected_to userfund_path(assigns(:userfund))
  end

  test "should show userfund" do
    get :show, id: @userfund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userfund
    assert_response :success
  end

  test "should update userfund" do
    patch :update, id: @userfund, userfund: { fund_id: @userfund.fund_id, user_id: @userfund.user_id }
    assert_redirected_to userfund_path(assigns(:userfund))
  end

  test "should destroy userfund" do
    assert_difference('Userfund.count', -1) do
      delete :destroy, id: @userfund
    end

    assert_redirected_to userfunds_path
  end
end
