require "application_system_test_case"

class AdministratorsTest < ApplicationSystemTestCase
  setup do
    @administrator = administrators(:one)
  end

  test "visiting the index" do
    visit administrators_url
    assert_selector "h1", text: "Administrators"
  end

  test "creating a Administrator" do
    visit administrators_url
    click_on "New Administrator"

    fill_in "Name", with: @administrator.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Administrator"

    assert_text "Administrator was successfully created"
    click_on "Back"
  end

  test "updating an Administrator" do
    visit administrators_url
    click_on "Edit", match: :first

    fill_in "Name", with: @administrator.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Administrator"

    assert_text "Administrator was successfully updated"
    click_on "Back"
  end

  test "destroying a Administrator" do
    visit administrators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administrator was successfully destroyed"
  end
end
