class Seller < ApplicationRecord
  belongs_to :location
  belongs_to :cuisine
  belongs_to :user
  has_one_attached :picture
  has_many :product_listings, dependent: :destroy
end
