class Shoe < ApplicationRecord
  validates :model, :gender, :color, :material, :size, :price, presence: true

  has_many :orders
  
  has_many_attached :photos
end