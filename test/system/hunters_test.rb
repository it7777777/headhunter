require "application_system_test_case"

class HuntersTest < ApplicationSystemTestCase
  setup do
    @hunter = hunters(:one)
  end

  test "visiting the index" do
    visit hunters_url
    assert_selector "h1", text: "Hunters"
  end

  test "should create hunter" do
    visit hunters_url
    click_on "New hunter"

    fill_in "Name", with: @hunter.name
    click_on "Create Hunter"

    assert_text "Hunter was successfully created"
    click_on "Back"
  end

  test "should update Hunter" do
    visit hunter_url(@hunter)
    click_on "Edit this hunter", match: :first

    fill_in "Name", with: @hunter.name
    click_on "Update Hunter"

    assert_text "Hunter was successfully updated"
    click_on "Back"
  end

  test "should destroy Hunter" do
    visit hunter_url(@hunter)
    click_on "Destroy this hunter", match: :first

    assert_text "Hunter was successfully destroyed"
  end
end
