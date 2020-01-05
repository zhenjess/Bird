class RemoveSizeFromShoes < ActiveRecord::Migration[5.2]
  def change
    remove_column :shoes, :size
  end
end
