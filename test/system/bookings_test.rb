require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Bookingid", with: @booking.bookingid
    fill_in "Client", with: @booking.client_id
    fill_in "Datebooking", with: @booking.datebooking
    fill_in "Discount", with: @booking.discount_id
    fill_in "Paymentmethod", with: @booking.paymentmethod_id
    fill_in "Point", with: @booking.point_id
    fill_in "Total", with: @booking.total
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Bookingid", with: @booking.bookingid
    fill_in "Client", with: @booking.client_id
    fill_in "Datebooking", with: @booking.datebooking
    fill_in "Discount", with: @booking.discount_id
    fill_in "Paymentmethod", with: @booking.paymentmethod_id
    fill_in "Point", with: @booking.point_id
    fill_in "Total", with: @booking.total
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
