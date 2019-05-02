class ProductListing < ApplicationRecord
  belongs_to :seller
  has_one_attached :picture
  has_many :product_reviews, dependent: :destroy
end
