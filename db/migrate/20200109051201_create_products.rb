class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :pname
      t.decimal :pprice
      t.string :psku
      t.blob :pimage

      t.timestamps
    end
  end
end
