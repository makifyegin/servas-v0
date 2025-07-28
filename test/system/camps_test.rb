require "application_system_test_case"

class CampsTest < ApplicationSystemTestCase
  setup do
    @camp = camps(:one)
  end

  test "visiting the index" do
    visit camps_url
    assert_selector "h1", text: "Camps"
  end

  test "should create camp" do
    visit camps_url
    click_on "New camp"

    fill_in "Description", with: @camp.description
    fill_in "Elevation", with: @camp.elevation
    fill_in "Facilities", with: @camp.facilities
    fill_in "Latitude", with: @camp.latitude
    fill_in "Longitude", with: @camp.longitude
    fill_in "Max stay", with: @camp.max_stay
    fill_in "Name", with: @camp.name
    check "Parking available" if @camp.parking_available
    check "Permit required" if @camp.permit_required
    click_on "Create Camp"

    assert_text "Camp was successfully created"
    click_on "Back"
  end

  test "should update Camp" do
    visit camp_url(@camp)
    click_on "Edit this camp", match: :first

    fill_in "Description", with: @camp.description
    fill_in "Elevation", with: @camp.elevation
    fill_in "Facilities", with: @camp.facilities
    fill_in "Latitude", with: @camp.latitude
    fill_in "Longitude", with: @camp.longitude
    fill_in "Max stay", with: @camp.max_stay
    fill_in "Name", with: @camp.name
    check "Parking available" if @camp.parking_available
    check "Permit required" if @camp.permit_required
    click_on "Update Camp"

    assert_text "Camp was successfully updated"
    click_on "Back"
  end

  test "should destroy Camp" do
    visit camp_url(@camp)
    accept_confirm { click_on "Destroy this camp", match: :first }

    assert_text "Camp was successfully destroyed"
  end
end
