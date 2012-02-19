require 'test_helper'

class ListensControllerTest < ActionController::TestCase
  setup do
    @listen = listens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listen" do
    assert_difference('Listen.count') do
      post :create, :listen => @listen.attributes
    end

    assert_redirected_to listen_path(assigns(:listen))
  end

  test "should show listen" do
    get :show, :id => @listen
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @listen
    assert_response :success
  end

  test "should update listen" do
    put :update, :id => @listen, :listen => @listen.attributes
    assert_redirected_to listen_path(assigns(:listen))
  end

  test "should destroy listen" do
    assert_difference('Listen.count', -1) do
      delete :destroy, :id => @listen
    end

    assert_redirected_to listens_path
  end
end
