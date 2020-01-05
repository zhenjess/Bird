class CreateShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.string :model, null: false
      t.string :gender, null: false
      t.string :color, null: false
      t.string :material, null: false
      t.integer :size, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end

