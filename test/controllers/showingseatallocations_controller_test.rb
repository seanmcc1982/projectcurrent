require 'test_helper'

class ShowingseatallocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @showingseatallocation = showingseatallocations(:one)
  end

  test "should get index" do
    get showingseatallocations_url
    assert_response :success
  end

  test "should get new" do
    get new_showingseatallocation_url
    assert_response :success
  end

  test "should create showingseatallocation" do
    assert_difference('Showingseatallocation.count') do
      post showingseatallocations_url, params: { showingseatallocation: { rows: @showingseatallocation.rows, seatallocation: @showingseatallocation.seatallocation, showing_id: @showingseatallocation.showing_id, width: @showingseatallocation.width } }
    end

    assert_redirected_to showingseatallocation_url(Showingseatallocation.last)
  end

  test "should show showingseatallocation" do
    get showingseatallocation_url(@showingseatallocation)
    assert_response :success
  end

  test "should get edit" do
    get edit_showingseatallocation_url(@showingseatallocation)
    assert_response :success
  end

  test "should update showingseatallocation" do
    patch showingseatallocation_url(@showingseatallocation), params: { showingseatallocation: { rows: @showingseatallocation.rows, seatallocation: @showingseatallocation.seatallocation, showing_id: @showingseatallocation.showing_id, width: @showingseatallocation.width } }
    assert_redirected_to showingseatallocation_url(@showingseatallocation)
  end

  test "should destroy showingseatallocation" do
    assert_difference('Showingseatallocation.count', -1) do
      delete showingseatallocation_url(@showingseatallocation)
    end

    assert_redirected_to showingseatallocations_url
  end
end
