class Order < ApplicationRecord
  validates :size, :quantity, presence: true
  
  belongs_to :shoe

  belongs_to :cart

end