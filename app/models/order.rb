class Order < ApplicationRecord
  validates :size, :quantity, presence: true

  belongs_to :shoe

  belongs_to :cart

  has_one_attached :photo

  def self.find_by_gender(search_id)
    Order.joins(:shoe)
    .where(shoes: {gender: search_id})
    .select("orders.id", :shoe_id, :cart_id, :size, :quantity, :model, :gender, :color, :material, :price)
  end
end