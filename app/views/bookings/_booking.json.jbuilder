json.extract! booking, :id, :bookingid, :client_id, :booking_productid, :no_product, :service_id, :bookingdescription, :bookingcost, :deposit, :datebooking, :created_at, :updated_at
json.url booking_url(booking, format: :json)
