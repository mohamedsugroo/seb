require 'test_helper'

class CompanyAprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_aproval = company_aprovals(:one)
  end

  test "should get index" do
    get company_aprovals_url
    assert_response :success
  end

  test "should get new" do
    get new_company_aproval_url
    assert_response :success
  end

  test "should create company_aproval" do
    assert_difference('CompanyAproval.count') do
      post company_aprovals_url, params: { company_aproval: { admin_id: @company_aproval.admin_id, name: @company_aproval.name, note: @company_aproval.note } }
    end

    assert_redirected_to company_aproval_url(CompanyAproval.last)
  end

  test "should show company_aproval" do
    get company_aproval_url(@company_aproval)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_aproval_url(@company_aproval)
    assert_response :success
  end

  test "should update company_aproval" do
    patch company_aproval_url(@company_aproval), params: { company_aproval: { admin_id: @company_aproval.admin_id, name: @company_aproval.name, note: @company_aproval.note } }
    assert_redirected_to company_aproval_url(@company_aproval)
  end

  test "should destroy company_aproval" do
    assert_difference('CompanyAproval.count', -1) do
      delete company_aproval_url(@company_aproval)
    end

    assert_redirected_to company_aprovals_url
  end
end
