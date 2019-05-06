class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :product_purchased_listing
end
