# frozen_string_literal: true

require 'test_helper'

class ComplexBuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complex_building = complex_buildings(:one)
  end

  test 'should get index' do
    get complex_buildings_url
    assert_response :success
  end

  test 'should get new' do
    get new_complex_building_url
    assert_response :success
  end

  test 'should create complex_building' do
    assert_difference('ComplexBuilding.count') do
      post complex_buildings_url, params: { complex_building: { address: @complex_building.address, owner: @complex_building.owner, price: @complex_building.price, sqmt: @complex_building.sqmt, units: @complex_building.units, user_id: @complex_building.user_id } }
    end

    assert_redirected_to complex_building_url(ComplexBuilding.last)
  end

  test 'should show complex_building' do
    get complex_building_url(@complex_building)
    assert_response :success
  end

  test 'should get edit' do
    get edit_complex_building_url(@complex_building)
    assert_response :success
  end

  test 'should update complex_building' do
    patch complex_building_url(@complex_building), params: { complex_building: { address: @complex_building.address, owner: @complex_building.owner, price: @complex_building.price, sqmt: @complex_building.sqmt, units: @complex_building.units, user_id: @complex_building.user_id } }
    assert_redirected_to complex_building_url(@complex_building)
  end

  test 'should destroy complex_building' do
    assert_difference('ComplexBuilding.count', -1) do
      delete complex_building_url(@complex_building)
    end

    assert_redirected_to complex_buildings_url
  end
end
