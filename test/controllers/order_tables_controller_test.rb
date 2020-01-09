require 'test_helper'

class OrderTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_table = order_tables(:one)
  end

  test "should get index" do
    get order_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_order_table_url
    assert_response :success
  end

  test "should create order_table" do
    assert_difference('OrderTable.count') do
      post order_tables_url, params: { order_table: { quantity: @order_table.quantity } }
    end

    assert_redirected_to order_table_url(OrderTable.last)
  end

  test "should show order_table" do
    get order_table_url(@order_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_table_url(@order_table)
    assert_response :success
  end

  test "should update order_table" do
    patch order_table_url(@order_table), params: { order_table: { quantity: @order_table.quantity } }
    assert_redirected_to order_table_url(@order_table)
  end

  test "should destroy order_table" do
    assert_difference('OrderTable.count', -1) do
      delete order_table_url(@order_table)
    end

    assert_redirected_to order_tables_url
  end
end
