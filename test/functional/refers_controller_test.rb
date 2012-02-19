require 'test_helper'

class RefersControllerTest < ActionController::TestCase
  setup do
    @refer = refers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:refers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create refer" do
    assert_difference('Refer.count') do
      post :create, :refer => @refer.attributes
    end

    assert_redirected_to refer_path(assigns(:refer))
  end

  test "should show refer" do
    get :show, :id => @refer
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @refer
    assert_response :success
  end

  test "should update refer" do
    put :update, :id => @refer, :refer => @refer.attributes
    assert_redirected_to refer_path(assigns(:refer))
  end

  test "should destroy refer" do
    assert_difference('Refer.count', -1) do
      delete :destroy, :id => @refer
    end

    assert_redirected_to refers_path
  end
end
