class Cart < ApplicationRecord
  validates :status, presence: true

  belongs_to :user

  has_many :orders

end