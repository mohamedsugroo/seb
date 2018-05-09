require 'test_helper'

class ContractorAprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractor_aproval = contractor_aprovals(:one)
  end

  test "should get index" do
    get contractor_aprovals_url
    assert_response :success
  end

  test "should get new" do
    get new_contractor_aproval_url
    assert_response :success
  end

  test "should create contractor_aproval" do
    assert_difference('ContractorAproval.count') do
      post contractor_aprovals_url, params: { contractor_aproval: { admin_id: @contractor_aproval.admin_id, name: @contractor_aproval.name, note: @contractor_aproval.note } }
    end

    assert_redirected_to contractor_aproval_url(ContractorAproval.last)
  end

  test "should show contractor_aproval" do
    get contractor_aproval_url(@contractor_aproval)
    assert_response :success
  end

  test "should get edit" do
    get edit_contractor_aproval_url(@contractor_aproval)
    assert_response :success
  end

  test "should update contractor_aproval" do
    patch contractor_aproval_url(@contractor_aproval), params: { contractor_aproval: { admin_id: @contractor_aproval.admin_id, name: @contractor_aproval.name, note: @contractor_aproval.note } }
    assert_redirected_to contractor_aproval_url(@contractor_aproval)
  end

  test "should destroy contractor_aproval" do
    assert_difference('ContractorAproval.count', -1) do
      delete contractor_aproval_url(@contractor_aproval)
    end

    assert_redirected_to contractor_aprovals_url
  end
end
