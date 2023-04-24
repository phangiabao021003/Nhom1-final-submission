require "application_system_test_case"

class StoreChainsTest < ApplicationSystemTestCase
  setup do
    @store_chain = store_chains(:one)
  end

  test "visiting the index" do
    visit store_chains_url
    assert_selector "h1", text: "Store chains"
  end

  test "should create store chain" do
    visit store_chains_url
    click_on "New store chain"

    fill_in "Chain number", with: @store_chain.chain_number
    fill_in "Header", with: @store_chain.header_id
    fill_in "Website", with: @store_chain.website
    click_on "Create Store chain"

    assert_text "Store chain was successfully created"
    click_on "Back"
  end

  test "should update Store chain" do
    visit store_chain_url(@store_chain)
    click_on "Edit this store chain", match: :first

    fill_in "Chain number", with: @store_chain.chain_number
    fill_in "Header", with: @store_chain.header_id
    fill_in "Website", with: @store_chain.website
    click_on "Update Store chain"

    assert_text "Store chain was successfully updated"
    click_on "Back"
  end

  test "should destroy Store chain" do
    visit store_chain_url(@store_chain)
    click_on "Destroy this store chain", match: :first

    assert_text "Store chain was successfully destroyed"
  end
end
