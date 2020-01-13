class AddProductToOrderTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_tables, :product, foreign_key: true
    add_reference :order_tables, :order, foreign_key: true
  end
end
