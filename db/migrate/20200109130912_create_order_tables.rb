class CreateOrderTables < ActiveRecord::Migration[5.2]
  def change
    create_table :order_tables do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
