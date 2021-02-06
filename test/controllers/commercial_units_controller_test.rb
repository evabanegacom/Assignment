require 'test_helper'

class CommercialUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commercial_unit = commercial_units(:one)
  end

  test "should get index" do
    get commercial_units_url
    assert_response :success
  end

  test "should get new" do
    get new_commercial_unit_url
    assert_response :success
  end

  test "should create commercial_unit" do
    assert_difference('CommercialUnit.count') do
      post commercial_units_url, params: { commercial_unit: { address: @commercial_unit.address, owner: @commercial_unit.owner, parking: @commercial_unit.parking, price: @commercial_unit.price, shops: @commercial_unit.shops, sqmt: @commercial_unit.sqmt, user_id: @commercial_unit.user_id } }
    end

    assert_redirected_to commercial_unit_url(CommercialUnit.last)
  end

  test "should show commercial_unit" do
    get commercial_unit_url(@commercial_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_commercial_unit_url(@commercial_unit)
    assert_response :success
  end

  test "should update commercial_unit" do
    patch commercial_unit_url(@commercial_unit), params: { commercial_unit: { address: @commercial_unit.address, owner: @commercial_unit.owner, parking: @commercial_unit.parking, price: @commercial_unit.price, shops: @commercial_unit.shops, sqmt: @commercial_unit.sqmt, user_id: @commercial_unit.user_id } }
    assert_redirected_to commercial_unit_url(@commercial_unit)
  end

  test "should destroy commercial_unit" do
    assert_difference('CommercialUnit.count', -1) do
      delete commercial_unit_url(@commercial_unit)
    end

    assert_redirected_to commercial_units_url
  end
end
