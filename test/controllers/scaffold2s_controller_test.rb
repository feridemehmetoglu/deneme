require 'test_helper'

class Scaffold2sControllerTest < ActionController::TestCase
  setup do
    @scaffold2 = scaffold2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scaffold2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scaffold2" do
    assert_difference('Scaffold2.count') do
      post :create, scaffold2: { Flower: @scaffold2.Flower, name: @scaffold2.name, type: @scaffold2.type }
    end

    assert_redirected_to scaffold2_path(assigns(:scaffold2))
  end

  test "should show scaffold2" do
    get :show, id: @scaffold2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scaffold2
    assert_response :success
  end

  test "should update scaffold2" do
    patch :update, id: @scaffold2, scaffold2: { Flower: @scaffold2.Flower, name: @scaffold2.name, type: @scaffold2.type }
    assert_redirected_to scaffold2_path(assigns(:scaffold2))
  end

  test "should destroy scaffold2" do
    assert_difference('Scaffold2.count', -1) do
      delete :destroy, id: @scaffold2
    end

    assert_redirected_to scaffold2s_path
  end
end
