json.extract! product_purchased_listing, :id, :product_name, :description, :was_price, :price, :reference_number, :expiry_date, :user_id, :created_at, :updated_at
json.url product_purchased_listing_url(product_purchased_listing, format: :json)
