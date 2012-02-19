require 'test_helper'

class WritesControllerTest < ActionController::TestCase
  setup do
    @write = writes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:writes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create write" do
    assert_difference('Write.count') do
      post :create, :write => @write.attributes
    end

    assert_redirected_to write_path(assigns(:write))
  end

  test "should show write" do
    get :show, :id => @write
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @write
    assert_response :success
  end

  test "should update write" do
    put :update, :id => @write, :write => @write.attributes
    assert_redirected_to write_path(assigns(:write))
  end

  test "should destroy write" do
    assert_difference('Write.count', -1) do
      delete :destroy, :id => @write
    end

    assert_redirected_to writes_path
  end
end
