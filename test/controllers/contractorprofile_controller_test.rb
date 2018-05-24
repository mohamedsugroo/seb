require 'test_helper'

class ContractorprofileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contractorprofile_index_url
    assert_response :success
  end

  test "should get show" do
    get contractorprofile_show_url
    assert_response :success
  end

end
