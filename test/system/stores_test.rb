require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "should create store" do
    visit stores_url
    click_on "New store"

    fill_in "Address", with: @store.address
    fill_in "Close time", with: @store.close_time
    fill_in "Description", with: @store.description
    fill_in "Email", with: @store.email
    fill_in "No employee", with: @store.no_employee
    fill_in "Open time", with: @store.open_time
    fill_in "Page", with: @store.page
    fill_in "Phone contract", with: @store.phone_contract
    fill_in "Store chain", with: @store.store_chain_id
    fill_in "Storeid", with: @store.storeid
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "should update Store" do
    visit store_url(@store)
    click_on "Edit this store", match: :first

    fill_in "Address", with: @store.address
    fill_in "Close time", with: @store.close_time
    fill_in "Description", with: @store.description
    fill_in "Email", with: @store.email
    fill_in "No employee", with: @store.no_employee
    fill_in "Open time", with: @store.open_time
    fill_in "Page", with: @store.page
    fill_in "Phone contract", with: @store.phone_contract
    fill_in "Store chain", with: @store.store_chain_id
    fill_in "Storeid", with: @store.storeid
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "should destroy Store" do
    visit store_url(@store)
    click_on "Destroy this store", match: :first

    assert_text "Store was successfully destroyed"
  end
end
