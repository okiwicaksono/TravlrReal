require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select 'title', 'About | Travlr'
    assert_select 'a[href=?]', root_path
  end
end
