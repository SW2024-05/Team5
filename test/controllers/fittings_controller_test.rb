require "test_helper"

class FittingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fittings_index_url
    assert_response :success
  end
end
