json.extract! product, :id, :productname, :manufacturing_id, :cost, :created_at, :updated_at
json.url product_url(product, format: :json)
