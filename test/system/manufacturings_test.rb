require "application_system_test_case"

class ManufacturingsTest < ApplicationSystemTestCase
  setup do
    @manufacturing = manufacturings(:one)
  end

  test "visiting the index" do
    visit manufacturings_url
    assert_selector "h1", text: "Manufacturings"
  end

  test "should create manufacturing" do
    visit manufacturings_url
    click_on "New manufacturing"

    fill_in "Manid", with: @manufacturing.manid
    fill_in "Manname", with: @manufacturing.manname
    click_on "Create Manufacturing"

    assert_text "Manufacturing was successfully created"
    click_on "Back"
  end

  test "should update Manufacturing" do
    visit manufacturing_url(@manufacturing)
    click_on "Edit this manufacturing", match: :first

    fill_in "Manid", with: @manufacturing.manid
    fill_in "Manname", with: @manufacturing.manname
    click_on "Update Manufacturing"

    assert_text "Manufacturing was successfully updated"
    click_on "Back"
  end

  test "should destroy Manufacturing" do
    visit manufacturing_url(@manufacturing)
    click_on "Destroy this manufacturing", match: :first

    assert_text "Manufacturing was successfully destroyed"
  end
end
