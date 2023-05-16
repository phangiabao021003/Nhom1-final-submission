json.extract! header, :id, :headerid, :name, :phone, :email, :created_at, :updated_at
json.url header_url(header, format: :json)
