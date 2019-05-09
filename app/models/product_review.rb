class ProductReview < ApplicationRecord
  belongs_to :product_listing
  belongs_to :user
  validates :name,:review, presence: true
end