class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.date :order_date
      t.decimal :order_total
      t.string :order_type

      t.timestamps
    end
  end
end
