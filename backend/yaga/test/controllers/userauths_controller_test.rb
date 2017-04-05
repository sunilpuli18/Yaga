require 'test_helper'

class UserauthsControllerTest < ActionController::TestCase
  setup do
    @userauth = userauths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userauths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userauth" do
    assert_difference('Userauth.count') do
      post :create, userauth: {  }
    end

    assert_redirected_to userauth_path(assigns(:userauth))
  end

  test "should show userauth" do
    get :show, id: @userauth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userauth
    assert_response :success
  end

  test "should update userauth" do
    patch :update, id: @userauth, userauth: {  }
    assert_redirected_to userauth_path(assigns(:userauth))
  end

  test "should destroy userauth" do
    assert_difference('Userauth.count', -1) do
      delete :destroy, id: @userauth
    end

    assert_redirected_to userauths_path
  end
end
