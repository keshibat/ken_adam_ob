json.extract! cart, :id, :company_name, :product_name, :description, :was_price, :price, :reference_number, :expiry_date, :qrcode, :user_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
