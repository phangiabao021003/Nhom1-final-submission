json.extract! booking, :id, :bookingid, :client_id, :datebooking, :point_id, :discount_id, :total, :paymentmethod_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
