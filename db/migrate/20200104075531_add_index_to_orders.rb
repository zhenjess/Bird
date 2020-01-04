class AddIndexToOrders < ActiveRecord::Migration[5.2]
  def change
    add_index :orders, [:cart_id, :shoe_id], :unique => true
  end
end
