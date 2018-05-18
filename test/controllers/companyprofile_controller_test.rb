require 'test_helper'

class CompanyprofileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get companyprofile_index_url
    assert_response :success
  end

  test "should get show" do
    get companyprofile_show_url
    assert_response :success
  end

end
