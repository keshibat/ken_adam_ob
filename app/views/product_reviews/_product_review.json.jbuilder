json.extract! product_review, :id, :review, :product_listing_id, :user_id, :created_at, :updated_at
json.url product_review_url(product_review, format: :json)
