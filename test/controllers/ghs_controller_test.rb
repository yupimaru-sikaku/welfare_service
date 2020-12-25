require 'test_helper'

class GhsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ghs_index_url
    assert_response :success
  end

end
