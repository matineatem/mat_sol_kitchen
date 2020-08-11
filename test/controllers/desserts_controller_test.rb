require 'test_helper'

class DessertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get desserts_index_url
    assert_response :success
  end

  test "should get show" do
    get desserts_show_url
    assert_response :success
  end

end
