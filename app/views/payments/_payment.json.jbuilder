json.extract! payment, :id, :paymentid, :store_id, :order_id, :booking_id, :discount_id, :paymentcost, :paymentdate, :created_at, :updated_at
json.url payment_url(payment, format: :json)
