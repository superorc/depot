require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#colomns #side a', minimun: 4
    assert_select '#main .entry', 2
    assert_select 'h3', 'MyString'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
