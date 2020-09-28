require 'test_helper'

class InterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interests_index_url
    assert_response :success
  end

  test "should get show" do
    get interests_show_url
    assert_response :success
  end

  test "should get new" do
    get interests_new_url
    assert_response :success
  end

  test "should get create" do
    get interests_create_url
    assert_response :success
  end

end
