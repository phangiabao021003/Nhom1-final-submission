require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Buyingmethod", with: @order.buyingmethod_id
    fill_in "Client", with: @order.client_id
    fill_in "Discount", with: @order.discount_id
    fill_in "Ordercost", with: @order.ordercost
    fill_in "Orderdate", with: @order.orderdate
    fill_in "Orderid", with: @order.orderid
    fill_in "Paymentmethod", with: @order.paymentmethod_id
    fill_in "Point", with: @order.point_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Buyingmethod", with: @order.buyingmethod_id
    fill_in "Client", with: @order.client_id
    fill_in "Discount", with: @order.discount_id
    fill_in "Ordercost", with: @order.ordercost
    fill_in "Orderdate", with: @order.orderdate
    fill_in "Orderid", with: @order.orderid
    fill_in "Paymentmethod", with: @order.paymentmethod_id
    fill_in "Point", with: @order.point_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
