# frozen_string_literal: true

require 'application_system_test_case'

class CommercialUnitsTest < ApplicationSystemTestCase
  setup do
    @commercial_unit = commercial_units(:one)
  end

  test 'visiting the index' do
    visit commercial_units_url
    assert_selector 'h1', text: 'Commercial Units'
  end

  test 'creating a Commercial unit' do
    visit commercial_units_url
    click_on 'New Commercial Unit'

    fill_in 'Address', with: @commercial_unit.address
    fill_in 'Owner', with: @commercial_unit.owner
    fill_in 'Parking', with: @commercial_unit.parking
    fill_in 'Price', with: @commercial_unit.price
    fill_in 'Shops', with: @commercial_unit.shops
    fill_in 'Sqmt', with: @commercial_unit.sqmt
    fill_in 'User', with: @commercial_unit.user_id
    click_on 'Create Commercial unit'

    assert_text 'Commercial unit was successfully created'
    click_on 'Back'
  end

  test 'updating a Commercial unit' do
    visit commercial_units_url
    click_on 'Edit', match: :first

    fill_in 'Address', with: @commercial_unit.address
    fill_in 'Owner', with: @commercial_unit.owner
    fill_in 'Parking', with: @commercial_unit.parking
    fill_in 'Price', with: @commercial_unit.price
    fill_in 'Shops', with: @commercial_unit.shops
    fill_in 'Sqmt', with: @commercial_unit.sqmt
    fill_in 'User', with: @commercial_unit.user_id
    click_on 'Update Commercial unit'

    assert_text 'Commercial unit was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Commercial unit' do
    visit commercial_units_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Commercial unit was successfully destroyed'
  end
end
