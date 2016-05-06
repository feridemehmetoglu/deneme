require 'test_helper'

class Ruby2scaffoldsControllerTest < ActionController::TestCase
  setup do
    @ruby2scaffold = ruby2scaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruby2scaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruby2scaffold" do
    assert_difference('Ruby2scaffold.count') do
      post :create, ruby2scaffold: { name: @ruby2scaffold.name }
    end

    assert_redirected_to ruby2scaffold_path(assigns(:ruby2scaffold))
  end

  test "should show ruby2scaffold" do
    get :show, id: @ruby2scaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruby2scaffold
    assert_response :success
  end

  test "should update ruby2scaffold" do
    patch :update, id: @ruby2scaffold, ruby2scaffold: { name: @ruby2scaffold.name }
    assert_redirected_to ruby2scaffold_path(assigns(:ruby2scaffold))
  end

  test "should destroy ruby2scaffold" do
    assert_difference('Ruby2scaffold.count', -1) do
      delete :destroy, id: @ruby2scaffold
    end

    assert_redirected_to ruby2scaffolds_path
  end
end
