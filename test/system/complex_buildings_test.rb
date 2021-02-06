require "application_system_test_case"

class ComplexBuildingsTest < ApplicationSystemTestCase
  setup do
    @complex_building = complex_buildings(:one)
  end

  test "visiting the index" do
    visit complex_buildings_url
    assert_selector "h1", text: "Complex Buildings"
  end

  test "creating a Complex building" do
    visit complex_buildings_url
    click_on "New Complex Building"

    fill_in "Address", with: @complex_building.address
    fill_in "Owner", with: @complex_building.owner
    fill_in "Price", with: @complex_building.price
    fill_in "Sqmt", with: @complex_building.sqmt
    fill_in "Units", with: @complex_building.units
    fill_in "User", with: @complex_building.user_id
    click_on "Create Complex building"

    assert_text "Complex building was successfully created"
    click_on "Back"
  end

  test "updating a Complex building" do
    visit complex_buildings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @complex_building.address
    fill_in "Owner", with: @complex_building.owner
    fill_in "Price", with: @complex_building.price
    fill_in "Sqmt", with: @complex_building.sqmt
    fill_in "Units", with: @complex_building.units
    fill_in "User", with: @complex_building.user_id
    click_on "Update Complex building"

    assert_text "Complex building was successfully updated"
    click_on "Back"
  end

  test "destroying a Complex building" do
    visit complex_buildings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Complex building was successfully destroyed"
  end
end
