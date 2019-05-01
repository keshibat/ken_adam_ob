class Seller < ApplicationRecord
  belongs_to :location
  belongs_to :cuisine
  belongs_to :user
  has_many :product_listings, dependent: :destroy
end
