json.extract! order_detail, :id, :order_id, :detailid, :product_id, :productquantity, :ordercost, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
