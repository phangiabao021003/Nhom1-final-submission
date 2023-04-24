require "test_helper"

class StoreChainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_chain = store_chains(:one)
  end

  test "should get index" do
    get store_chains_url
    assert_response :success
  end

  test "should get new" do
    get new_store_chain_url
    assert_response :success
  end

  test "should create store_chain" do
    assert_difference("StoreChain.count") do
      post store_chains_url, params: { store_chain: { chain_number: @store_chain.chain_number, header_id: @store_chain.header_id, website: @store_chain.website } }
    end

    assert_redirected_to store_chain_url(StoreChain.last)
  end

  test "should show store_chain" do
    get store_chain_url(@store_chain)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_chain_url(@store_chain)
    assert_response :success
  end

  test "should update store_chain" do
    patch store_chain_url(@store_chain), params: { store_chain: { chain_number: @store_chain.chain_number, header_id: @store_chain.header_id, website: @store_chain.website } }
    assert_redirected_to store_chain_url(@store_chain)
  end

  test "should destroy store_chain" do
    assert_difference("StoreChain.count", -1) do
      delete store_chain_url(@store_chain)
    end

    assert_redirected_to store_chains_url
  end
end
