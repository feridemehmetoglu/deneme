require 'test_helper'

class YandalagitsControllerTest < ActionController::TestCase
  setup do
    @yandalagit = yandalagits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yandalagits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yandalagit" do
    assert_difference('Yandalagit.count') do
      post :create, yandalagit: { index: @yandalagit.index }
    end

    assert_redirected_to yandalagit_path(assigns(:yandalagit))
  end

  test "should show yandalagit" do
    get :show, id: @yandalagit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yandalagit
    assert_response :success
  end

  test "should update yandalagit" do
    patch :update, id: @yandalagit, yandalagit: { index: @yandalagit.index }
    assert_redirected_to yandalagit_path(assigns(:yandalagit))
  end

  test "should destroy yandalagit" do
    assert_difference('Yandalagit.count', -1) do
      delete :destroy, id: @yandalagit
    end

    assert_redirected_to yandalagits_path
  end
end
