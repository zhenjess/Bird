class Shoe < ApplicationRecord
  # TYPES = [
  #       'Tree',
  #       'Wool'
  #   ].sort.freeze

  validates :model, :gender, :color, :material, :size, :price, presence: true #inclusion: { in: TYPES }

  has_many :orders
  
  has_many_attached :photos

end