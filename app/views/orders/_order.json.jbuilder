json.extract! order, :id, :orderid, :client_id, :orderdate, :point_id, :discount_id, :ordercost, :paymentmethod_id, :buyingmethod_id, :created_at, :updated_at
json.url order_url(order, format: :json)
