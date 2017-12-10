require 'test_helper'

class BookingshowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookingshowing = bookingshowings(:one)
  end

  test "should get index" do
    get bookingshowings_url
    assert_response :success
  end

  test "should get new" do
    get new_bookingshowing_url
    assert_response :success
  end

  test "should create bookingshowing" do
    assert_difference('Bookingshowing.count') do
      post bookingshowings_url, params: { bookingshowing: { booking_id: @bookingshowing.booking_id, filmtitle: @bookingshowing.filmtitle, price: @bookingshowing.price, screenname: @bookingshowing.screenname, seat: @bookingshowing.seat, showing_id: @bookingshowing.showing_id } }
    end

    assert_redirected_to bookingshowing_url(Bookingshowing.last)
  end

  test "should show bookingshowing" do
    get bookingshowing_url(@bookingshowing)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookingshowing_url(@bookingshowing)
    assert_response :success
  end

  test "should update bookingshowing" do
    patch bookingshowing_url(@bookingshowing), params: { bookingshowing: { booking_id: @bookingshowing.booking_id, filmtitle: @bookingshowing.filmtitle, price: @bookingshowing.price, screenname: @bookingshowing.screenname, seat: @bookingshowing.seat, showing_id: @bookingshowing.showing_id } }
    assert_redirected_to bookingshowing_url(@bookingshowing)
  end

  test "should destroy bookingshowing" do
    assert_difference('Bookingshowing.count', -1) do
      delete bookingshowing_url(@bookingshowing)
    end

    assert_redirected_to bookingshowings_url
  end
end
