json.extract! product_listing, :id, :product_name, :description, :was_price, :price, :expiry_date, :seller_id, :created_at, :updated_at
json.url product_listing_url(product_listing, format: :json)
