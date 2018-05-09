require "application_system_test_case"

class CompanyAprovalsTest < ApplicationSystemTestCase
  setup do
    @company_aproval = company_aprovals(:one)
  end

  test "visiting the index" do
    visit company_aprovals_url
    assert_selector "h1", text: "Company Aprovals"
  end

  test "creating a Company aproval" do
    visit company_aprovals_url
    click_on "New Company Aproval"

    fill_in "Admin", with: @company_aproval.admin_id
    fill_in "Name", with: @company_aproval.name
    fill_in "Note", with: @company_aproval.note
    click_on "Create Company aproval"

    assert_text "Company aproval was successfully created"
    click_on "Back"
  end

  test "updating a Company aproval" do
    visit company_aprovals_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @company_aproval.admin_id
    fill_in "Name", with: @company_aproval.name
    fill_in "Note", with: @company_aproval.note
    click_on "Update Company aproval"

    assert_text "Company aproval was successfully updated"
    click_on "Back"
  end

  test "destroying a Company aproval" do
    visit company_aprovals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company aproval was successfully destroyed"
  end
end
