class Order < ApplicationRecord
  validates :size, :quantity, presence: true

  belongs_to :shoe

  belongs_to :cart

  has_one :shoe #each order points to 1 type of shoe
end

