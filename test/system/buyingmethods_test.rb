require "application_system_test_case"

class BuyingmethodsTest < ApplicationSystemTestCase
  setup do
    @buyingmethod = buyingmethods(:one)
  end

  test "visiting the index" do
    visit buyingmethods_url
    assert_selector "h1", text: "Buyingmethods"
  end

  test "should create buyingmethod" do
    visit buyingmethods_url
    click_on "New buyingmethod"

    fill_in "Buyingmed", with: @buyingmethod.buyingmed
    click_on "Create Buyingmethod"

    assert_text "Buyingmethod was successfully created"
    click_on "Back"
  end

  test "should update Buyingmethod" do
    visit buyingmethod_url(@buyingmethod)
    click_on "Edit this buyingmethod", match: :first

    fill_in "Buyingmed", with: @buyingmethod.buyingmed
    click_on "Update Buyingmethod"

    assert_text "Buyingmethod was successfully updated"
    click_on "Back"
  end

  test "should destroy Buyingmethod" do
    visit buyingmethod_url(@buyingmethod)
    click_on "Destroy this buyingmethod", match: :first

    assert_text "Buyingmethod was successfully destroyed"
  end
end
