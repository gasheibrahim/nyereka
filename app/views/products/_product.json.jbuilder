json.extract! product, :id, :product_name, :product_image, :product_details, :product_category, :product_price, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
