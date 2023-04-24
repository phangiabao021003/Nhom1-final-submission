require "test_helper"

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get stores_url
    assert_response :success
  end

  test "should get new" do
    get new_store_url
    assert_response :success
  end

  test "should create store" do
    assert_difference("Store.count") do
      post stores_url, params: { store: { address: @store.address, close_time: @store.close_time, description: @store.description, email: @store.email, no_employee: @store.no_employee, open_time: @store.open_time, page: @store.page, phone_contract: @store.phone_contract, store_chain_id: @store.store_chain_id, storeid: @store.storeid } }
    end

    assert_redirected_to store_url(Store.last)
  end

  test "should show store" do
    get store_url(@store)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_url(@store)
    assert_response :success
  end

  test "should update store" do
    patch store_url(@store), params: { store: { address: @store.address, close_time: @store.close_time, description: @store.description, email: @store.email, no_employee: @store.no_employee, open_time: @store.open_time, page: @store.page, phone_contract: @store.phone_contract, store_chain_id: @store.store_chain_id, storeid: @store.storeid } }
    assert_redirected_to store_url(@store)
  end

  test "should destroy store" do
    assert_difference("Store.count", -1) do
      delete store_url(@store)
    end

    assert_redirected_to stores_url
  end
end
