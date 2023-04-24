require "test_helper"

class PurchasingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchasing = purchasings(:one)
  end

  test "should get index" do
    get purchasings_url
    assert_response :success
  end

  test "should get new" do
    get new_purchasing_url
    assert_response :success
  end

  test "should create purchasing" do
    assert_difference("Purchasing.count") do
      post purchasings_url, params: { purchasing: { datepurrchasing: @purchasing.datepurrchasing, no: @purchasing.no, product_id: @purchasing.product_id, purchasingcost: @purchasing.purchasingcost, store_id: @purchasing.store_id, supplier_id: @purchasing.supplier_id, unit: @purchasing.unit } }
    end

    assert_redirected_to purchasing_url(Purchasing.last)
  end

  test "should show purchasing" do
    get purchasing_url(@purchasing)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchasing_url(@purchasing)
    assert_response :success
  end

  test "should update purchasing" do
    patch purchasing_url(@purchasing), params: { purchasing: { datepurrchasing: @purchasing.datepurrchasing, no: @purchasing.no, product_id: @purchasing.product_id, purchasingcost: @purchasing.purchasingcost, store_id: @purchasing.store_id, supplier_id: @purchasing.supplier_id, unit: @purchasing.unit } }
    assert_redirected_to purchasing_url(@purchasing)
  end

  test "should destroy purchasing" do
    assert_difference("Purchasing.count", -1) do
      delete purchasing_url(@purchasing)
    end

    assert_redirected_to purchasings_url
  end
end
