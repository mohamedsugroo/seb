require 'test_helper'

class ProfilecompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get profilecompanies_edit_url
    assert_response :success
  end

end
