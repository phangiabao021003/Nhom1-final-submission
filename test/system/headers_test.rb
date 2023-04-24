require "application_system_test_case"

class HeadersTest < ApplicationSystemTestCase
  setup do
    @header = headers(:one)
  end

  test "visiting the index" do
    visit headers_url
    assert_selector "h1", text: "Headers"
  end

  test "should create header" do
    visit headers_url
    click_on "New header"

    fill_in "Email", with: @header.email
    fill_in "Name", with: @header.name
    fill_in "Phone", with: @header.phone
    click_on "Create Header"

    assert_text "Header was successfully created"
    click_on "Back"
  end

  test "should update Header" do
    visit header_url(@header)
    click_on "Edit this header", match: :first

    fill_in "Email", with: @header.email
    fill_in "Name", with: @header.name
    fill_in "Phone", with: @header.phone
    click_on "Update Header"

    assert_text "Header was successfully updated"
    click_on "Back"
  end

  test "should destroy Header" do
    visit header_url(@header)
    click_on "Destroy this header", match: :first

    assert_text "Header was successfully destroyed"
  end
end
