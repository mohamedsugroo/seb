require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "First Line", with: @contact.first_line
    fill_in "Job", with: @contact.job_id
    fill_in "Phone Number", with: @contact.phone_number
    fill_in "Post Code", with: @contact.post_code
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "First Line", with: @contact.first_line
    fill_in "Job", with: @contact.job_id
    fill_in "Phone Number", with: @contact.phone_number
    fill_in "Post Code", with: @contact.post_code
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
