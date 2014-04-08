require 'test_helper'

class MailusersControllerTest < ActionController::TestCase
  setup do
    @mailuser = mailusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailuser" do
    assert_difference('Mailuser.count') do
      post :create, mailuser: { email: @mailuser.email, empid: @mailuser.empid, password: @mailuser.password, username: @mailuser.username }
    end

    assert_redirected_to mailuser_path(assigns(:mailuser))
  end

  test "should show mailuser" do
    get :show, id: @mailuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailuser
    assert_response :success
  end

  test "should update mailuser" do
    put :update, id: @mailuser, mailuser: { email: @mailuser.email, empid: @mailuser.empid, password: @mailuser.password, username: @mailuser.username }
    assert_redirected_to mailuser_path(assigns(:mailuser))
  end

  test "should destroy mailuser" do
    assert_difference('Mailuser.count', -1) do
      delete :destroy, id: @mailuser
    end

    assert_redirected_to mailusers_path
  end
end
