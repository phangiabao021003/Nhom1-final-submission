json.extract! header, :id, :name, :phone, :email, :created_at, :updated_at
json.url header_url(header, format: :json)
