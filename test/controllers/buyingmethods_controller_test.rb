require "test_helper"

class BuyingmethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyingmethod = buyingmethods(:one)
  end

  test "should get index" do
    get buyingmethods_url
    assert_response :success
  end

  test "should get new" do
    get new_buyingmethod_url
    assert_response :success
  end

  test "should create buyingmethod" do
    assert_difference("Buyingmethod.count") do
      post buyingmethods_url, params: { buyingmethod: { buyingmed: @buyingmethod.buyingmed } }
    end

    assert_redirected_to buyingmethod_url(Buyingmethod.last)
  end

  test "should show buyingmethod" do
    get buyingmethod_url(@buyingmethod)
    assert_response :success
  end

  test "should get edit" do
    get edit_buyingmethod_url(@buyingmethod)
    assert_response :success
  end

  test "should update buyingmethod" do
    patch buyingmethod_url(@buyingmethod), params: { buyingmethod: { buyingmed: @buyingmethod.buyingmed } }
    assert_redirected_to buyingmethod_url(@buyingmethod)
  end

  test "should destroy buyingmethod" do
    assert_difference("Buyingmethod.count", -1) do
      delete buyingmethod_url(@buyingmethod)
    end

    assert_redirected_to buyingmethods_url
  end
end
