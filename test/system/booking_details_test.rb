require "application_system_test_case"

class BookingDetailsTest < ApplicationSystemTestCase
  setup do
    @booking_detail = booking_details(:one)
  end

  test "visiting the index" do
    visit booking_details_url
    assert_selector "h1", text: "Booking details"
  end

  test "should create booking detail" do
    visit booking_details_url
    click_on "New booking detail"

    fill_in "Booking", with: @booking_detail.booking_id
    fill_in "Bookingdescription", with: @booking_detail.bookingdescription
    fill_in "Bookingdetailid", with: @booking_detail.bookingdetailid
    fill_in "Service", with: @booking_detail.service_id
    fill_in "Time", with: @booking_detail.time
    click_on "Create Booking detail"

    assert_text "Booking detail was successfully created"
    click_on "Back"
  end

  test "should update Booking detail" do
    visit booking_detail_url(@booking_detail)
    click_on "Edit this booking detail", match: :first

    fill_in "Booking", with: @booking_detail.booking_id
    fill_in "Bookingdescription", with: @booking_detail.bookingdescription
    fill_in "Bookingdetailid", with: @booking_detail.bookingdetailid
    fill_in "Service", with: @booking_detail.service_id
    fill_in "Time", with: @booking_detail.time
    click_on "Update Booking detail"

    assert_text "Booking detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking detail" do
    visit booking_detail_url(@booking_detail)
    click_on "Destroy this booking detail", match: :first

    assert_text "Booking detail was successfully destroyed"
  end
end
