class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :shoe_id, null: false
      t.integer :cart_id, null: false
      t.integer :size, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
