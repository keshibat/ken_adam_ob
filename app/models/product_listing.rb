class ProductListing < ApplicationRecord
  belongs_to :seller
  has_many :product_reviews, dependent: :destroy
end
