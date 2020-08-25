require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get inex" do
    get welcomes_inex_url
    assert_response :success
  end

end
