require "application_system_test_case"

class OrderTablesTest < ApplicationSystemTestCase
  setup do
    @order_table = order_tables(:one)
  end

  test "visiting the index" do
    visit order_tables_url
    assert_selector "h1", text: "Order Tables"
  end

  test "creating a Order table" do
    visit order_tables_url
    click_on "New Order Table"

    fill_in "Quantity", with: @order_table.quantity
    click_on "Create Order table"

    assert_text "Order table was successfully created"
    click_on "Back"
  end

  test "updating a Order table" do
    visit order_tables_url
    click_on "Edit", match: :first

    fill_in "Quantity", with: @order_table.quantity
    click_on "Update Order table"

    assert_text "Order table was successfully updated"
    click_on "Back"
  end

  test "destroying a Order table" do
    visit order_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order table was successfully destroyed"
  end
end
