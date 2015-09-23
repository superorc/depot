require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    master = users(:one)
    post :create, name: master.name, password: 'secret'
    assert_redirected_to admin_url
    assert_equal master.id, session[:user_id]
  end

  test "should faill login" do
    master = users(:one)
    post :create, name: master.name, password: 'wrong password'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to store_url
  end

end
