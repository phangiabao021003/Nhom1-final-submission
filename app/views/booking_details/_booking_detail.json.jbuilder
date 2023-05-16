json.extract! booking_detail, :id, :booking_id, :bookingdetailid, :service_id, :time, :bookingdescription, :created_at, :updated_at
json.url booking_detail_url(booking_detail, format: :json)
