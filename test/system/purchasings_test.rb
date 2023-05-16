require "application_system_test_case"

class PurchasingsTest < ApplicationSystemTestCase
  setup do
    @purchasing = purchasings(:one)
  end

  test "visiting the index" do
    visit purchasings_url
    assert_selector "h1", text: "Purchasings"
  end

  test "should create purchasing" do
    visit purchasings_url
    click_on "New purchasing"

    fill_in "Datepurchasing", with: @purchasing.datepurchasing
    fill_in "Note", with: @purchasing.note
    fill_in "Number of unit", with: @purchasing.number_of_unit
    fill_in "Product", with: @purchasing.product_id
    fill_in "Purchasingcost", with: @purchasing.purchasingcost
    fill_in "Purchasingid", with: @purchasing.purchasingid
    fill_in "Store", with: @purchasing.store_id
    fill_in "Supplier", with: @purchasing.supplier_id
    fill_in "Unit", with: @purchasing.unit
    click_on "Create Purchasing"

    assert_text "Purchasing was successfully created"
    click_on "Back"
  end

  test "should update Purchasing" do
    visit purchasing_url(@purchasing)
    click_on "Edit this purchasing", match: :first

    fill_in "Datepurchasing", with: @purchasing.datepurchasing
    fill_in "Note", with: @purchasing.note
    fill_in "Number of unit", with: @purchasing.number_of_unit
    fill_in "Product", with: @purchasing.product_id
    fill_in "Purchasingcost", with: @purchasing.purchasingcost
    fill_in "Purchasingid", with: @purchasing.purchasingid
    fill_in "Store", with: @purchasing.store_id
    fill_in "Supplier", with: @purchasing.supplier_id
    fill_in "Unit", with: @purchasing.unit
    click_on "Update Purchasing"

    assert_text "Purchasing was successfully updated"
    click_on "Back"
  end

  test "should destroy Purchasing" do
    visit purchasing_url(@purchasing)
    click_on "Destroy this purchasing", match: :first

    assert_text "Purchasing was successfully destroyed"
  end
end
