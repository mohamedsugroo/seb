require "application_system_test_case"

class ContractorAprovalsTest < ApplicationSystemTestCase
  setup do
    @contractor_aproval = contractor_aprovals(:one)
  end

  test "visiting the index" do
    visit contractor_aprovals_url
    assert_selector "h1", text: "Contractor Aprovals"
  end

  test "creating a Contractor aproval" do
    visit contractor_aprovals_url
    click_on "New Contractor Aproval"

    fill_in "Admin", with: @contractor_aproval.admin_id
    fill_in "Name", with: @contractor_aproval.name
    fill_in "Note", with: @contractor_aproval.note
    click_on "Create Contractor aproval"

    assert_text "Contractor aproval was successfully created"
    click_on "Back"
  end

  test "updating a Contractor aproval" do
    visit contractor_aprovals_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @contractor_aproval.admin_id
    fill_in "Name", with: @contractor_aproval.name
    fill_in "Note", with: @contractor_aproval.note
    click_on "Update Contractor aproval"

    assert_text "Contractor aproval was successfully updated"
    click_on "Back"
  end

  test "destroying a Contractor aproval" do
    visit contractor_aprovals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contractor aproval was successfully destroyed"
  end
end
