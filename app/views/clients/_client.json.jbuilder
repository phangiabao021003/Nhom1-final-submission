json.extract! client, :id, :store_id, :clientphone, :clientname, :clientemail, :created_at, :updated_at
json.url client_url(client, format: :json)
