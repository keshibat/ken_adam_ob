class ProductReview < ApplicationRecord
  belongs_to :product_listing
  belongs_to :user
end
