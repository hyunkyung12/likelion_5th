require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get title" do
    get :title
    assert_response :success
  end

  test "should get content" do
    get :content
    assert_response :success
  end

  test "should get user:references" do
    get :user:references
    assert_response :success
  end

end
