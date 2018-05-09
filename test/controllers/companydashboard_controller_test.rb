require 'test_helper'

class CompanydashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get companydashboard_index_url
    assert_response :success
  end

  test "should get jobs" do
    get companydashboard_jobs_url
    assert_response :success
  end

  test "should get hired" do
    get companydashboard_hired_url
    assert_response :success
  end

end
